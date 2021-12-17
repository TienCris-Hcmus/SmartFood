function Validator(options) {
    var selectorRules = {};

    //Hàm lấy parent có chứa selector của element
    function getParent(element, selector) {
        while (element.parentElement) {
            if (element.parentElement.matches(selector)) {
                return element.parentElement;
            }
            element = element.parentElement;
        }
    }

    //Hàm thực hiện validate
    function validate(rule, inputElement) {
        var errorMessage = rule.testError(inputElement.value);
        var fgroupElement = getParent(inputElement, options.formGroupSelector);
        var spanElement = fgroupElement.querySelector(options.errorSelector);

        //Lấy ra các rules testError của selector
        var rulesError = selectorRules[rule.selector];
        //Lặp qua từng rulesError và lấy rulesError bị lỗi đầu tiên
        for (var i = 0; i < rulesError.length; ++i) {
            errorMessage = rulesError[i](inputElement.value);
            if (errorMessage) break;
        }

        if (errorMessage) {
            fgroupElement.classList.add('invalid');
            spanElement.innerText = errorMessage;
        }
        else {
            fgroupElement.classList.remove('invalid');
            spanElement.innerText = '';
        }
        //Xử lí khi người dùng nhập
        inputElement.oninput = function (e) {
            fgroupElement.classList.remove('invalid');
            spanElement.innerText = '';
        }
        
        return !errorMessage;
    }
    //Lấy form cần validate
    var formElement = document.querySelector(options.form);
    if (formElement) {

        //Lặp qua mỗi rule và xử lý (lắng nghe sự kiện: blur, input,...)
        options.rules.forEach(function (rule) {
            //Lưu lại các rules cho mỗi input
            if (Array.isArray(selectorRules[rule.selector])) {
                selectorRules[rule.selector].push(rule.testError);
            }
            else {
                selectorRules[rule.selector] = [rule.testError];
            }

            var inputElement = document.querySelector(rule.selector);

            if (inputElement) {
                //Xử lí khi blur khỏi input
                inputElement.onblur = function (e) {
                    validate(rule, inputElement);
                }
            }
        });

        //Khi submit form
        formElement.onsubmit = function (e) {
            e.preventDefault();

            var isFormValid = true;

            //Lặp qua từng rule và validate
            options.rules.forEach(function (rule) {
                let inputElement = document.querySelector(rule.selector);
                var isValid = validate(rule, inputElement);
                if (!isValid) {
                    isFormValid = false;
                }
            });

            if (isFormValid) {
                //Trường hợp submit với Javascript
                if (typeof options.onSubmit === 'function') {
                    var enableInputs = document.querySelectorAll('[name]');
                    var formValues = Array.from(enableInputs).reduce(function (values, input) {
                        values[input.name] = input.value;
                        return values;
                    }, {});

                    options.onSubmit(formValues);
                }
                //Trường hợp submit với hành vi mặc định
                else {
                    formElement.submit();
                }
            }
        }
    }
}

//Định nghĩa rules
Validator.isRequired = function (selector, message) {
    return {
        selector: selector,
        testError: function (value) {
            if (value.trim()) {
                return false;
            }
            return message || 'Vui lòng nhập trường này!';
        }
    }
}

Validator.isUpperFirst = function (selector, message) {
    return {
        selector: selector,
        testError: function (value) {
            if (value[0] >= 'a' && value[0] <= 'z') {
                return message || 'Vui lòng nhập trường này!';
            }
            for (var i = 1; i < value.length - 1; i++) {
                if (value[i] === ' ' && value[i + 1] >= 'a' && value[i + 1] <= 'z') {
                    return message || 'Vui lòng nhập trường này!';
                }
            }
            return false;
        }
    }
}

Validator.isUsername = function (selector, message) {
    return {
        selector: selector,
        testError: function (value) {
            var regex = /^[a-zA-Z][a-zA-Z0-9_]+$/;
            if (value.match(regex)) {
                return false;
            }
            return message || 'Vui lòng nhập trường này!';
        }
    }
}

Validator.isEmail = function (selector, message) {
    return {
        selector: selector,
        testError: function (value) {
            var regex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            if (regex.test(value)) {
                return false;
            }
            return message || 'Trường này phải là email!';
        }
    }
}

Validator.isPhone = function (selector, message) {
    return {
        selector: selector,
        testError: function (value) {
            var regex = /^[0][0-9].{8}$/
            if (value.match(regex)) {
                return false;
            }
            return message || 'Vui lòng nhập trường này!';
        }
    }
}

Validator.isDate = function (selector, message) {
    return {
        selector: selector,
        testError: function (value) {
            var regex = /^\d{2}\/\d{2}\/\d{4}$/;
            if (value.match(regex)) {
                return false;
            }
            return message || 'Vui lòng nhập trường này!';
        }
    }
}

Validator.isPassword = function (selector, min, message) {
    return {
        selector: selector,
        testError: function (value) {
            if (value.length >= min) {
                return false;
            }
            return message || `Vui lòng nhập tối thiểu ${min} ký tự`;
        }
    }
}

Validator.isPassword_Confirm = function(selector, getPassword, message) {
    return {
        selector: selector,
        testError: function(value){
            if(value === getPassword()){
                return false;
            }
            return message || 'Giá trị nhập vào không chính xác';
        }
    }
}