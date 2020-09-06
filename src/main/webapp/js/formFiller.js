'use strict';
function setX() {
    const xText = document.getElementById('x-header');
    const xElem = document.getElementById('x-choice');
    const realX = xElem.value.replace(',', '.');
    if (realX !== "") {
        let floatX = parseFloat(realX.substring(0, 14));
        if(!Number.isNaN(floatX) && floatX > -3 && floatX < 5) {
            document.getElementById('x-value').setAttribute('value', realX);
            xElem.classList.add('valid');
            xText.classList.add('valid');
            return true;
        }
    }
    xElem.classList.remove('valid');
    xText.classList.remove('valid');
    xElem.classList.add('invalid');
    xText.classList.add('invalid');
    return false;
}

function setY() {
    const yText = document.getElementById('y-header');
    const y = document.querySelector('input[type="radio"]:checked');
    if (y) {
        document.getElementById('y-value').setAttribute('value', y.value);
        yText.classList.add('valid');
        return true;
    }
    yText.classList.remove('valid');
    yText.classList.add('invalid');
    return false;
}

function setR() {
    const r = document.getElementById('r-choice').value;
    document.getElementById('r-value').setAttribute('value', r);
    return true;
}

function validate() {
    const button = document.getElementById('submit-button');
    const dot = document.getElementById('target-dot');

    const xCheck = setX();
    const yCheck = setY();
    const rCheck = setR();

    if (xCheck&&yCheck&&rCheck){
        button.removeAttribute('disabled');
        const x = Number(document.getElementById('x-value').value);
        const y = Number(document.getElementById('y-value').value);
        const r = Number(document.getElementById('r-value').value);
        const calcX = 200 + x * 180 / r; //point coordinates to svg coordinates
        const calcY = 200 - y * 180 / r;
        dot.setAttribute('r', "3");
        dot.setAttribute('cx', String(calcX));
        dot.setAttribute('cy', String(calcY));
     } else {
         button.setAttribute("disabled", "");
         dot.setAttribute('r', "0");
     }
}

document.getElementById('x-choice').addEventListener('input', validate);
document.querySelectorAll('.radio-button input').forEach(function (elem) {
    elem.addEventListener('input', validate);
});
const r = document.getElementById('r-choice');
r.addEventListener('input', setR);
document.getElementById('r-value').setAttribute('value', r.value);