var form_info = document.querySelector('#form-info');

var btn_edit_info = document.querySelector('#btn-edit-info');

var fullname, username, phoneNumber, email, address, password;

btn_edit_info.onclick = function (e) {
    fullname = form_info.querySelector('#fullname').innerText;
    username = form_info.querySelector('#username').innerText;
    phoneNumber = form_info.querySelector('#phoneNumber').innerText;
    email = form_info.querySelector('#email').innerText;
    address = form_info.querySelector('#address').innerText;
    password = form_info.querySelector('#password').innerText;

    let data = { fullname, username, phoneNumber, email, address, password };
    console.log(data);
}