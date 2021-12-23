var subElement = document.querySelectorAll('.btn.btn-number-dec');
var addElement = document.querySelectorAll('.btn.btn-number-inc');

var numberProductElement = document.querySelectorAll('#number-product');
var productElement = document.querySelectorAll('.col-sm-6');

var moneyElement = document.querySelectorAll('#Money');
var moneyElementArray = Array.from(moneyElement);

var tempMoneyEle = document.querySelector('#tempMoney');
var shipMoneyEle = document.querySelector('#shipMoney');
var totalMoneyEle = document.querySelector('#totalMoney');

subElement = Array.from(subElement);
addElement = Array.from(addElement);
numberProductElement = Array.from(numberProductElement);

totalMoney();

subElement.forEach((sub, index) => {
    sub.onclick = function (e) {
        let numb = parseInt(numberProductElement[index].innerText);
        if (numb != 1) {
            numb--;
            numberProductElement[index].innerText = numb;
        }
        totalMoney();
    }
});

addElement.forEach((add, index) => {
    add.onclick = function (e) {
        let numb = parseInt(numberProductElement[index].innerText);
        numb++;
        numberProductElement[index].innerText = numb;
        totalMoney();
    }
});

function temporaryMoney() {
    let tempMoney = 0;
    moneyElementArray.forEach((money, index) => {
        console.log(index);
        money = parseInt(money.innerText);
        let numbProduct = parseInt(numberProductElement[index].innerText);

        tempMoney += money * numbProduct;
    })
    tempMoneyEle.innerText = tempMoney;

    return tempMoney;
}

function totalMoney() {
    var total = temporaryMoney() + parseInt(shipMoneyEle.innerText);
    totalMoneyEle.innerText = total;
    return total;
}

/*var btn_thanhtoan = document.querySelector('#btn-thanhtoan');
btn_thanhtoan.onclick = function (e) {
    location.assign('SmartFood/thanh-toan');
}*/