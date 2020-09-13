'use strict';
function setX() {
    const xText = document.getElementById('x-header');
    const xElem = document.getElementById('x-choice');
    const realX = xElem.value.replace(',', '.');
    if (realX !== ""&& !isNaN(realX)) {
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
    document.querySelectorAll('.svg-dot').forEach(function (elem) {
        const rescX = 200 + elem.getAttributeNS(null, 'data-x')*180/r;
        const rescY = 200 - elem.getAttributeNS(null, 'data-y')*180/r;
        elem.setAttributeNS(null, 'cx', String(rescX)); //rescaling
        elem.setAttributeNS(null, 'cy', String(rescY));
    });
    return true;
}

function validate() {
    const button = document.getElementById('submit-button');

    const xCheck = setX();
    const yCheck = setY();
    const rCheck = setR();

    if (xCheck&&yCheck&&rCheck) {
        button.removeAttribute('disabled');
    }
}

document.getElementById('x-choice').addEventListener('input', validate);
document.querySelectorAll('.radio-button input').forEach(function (elem) {
    elem.addEventListener('input', validate);
});
const r = document.getElementById('r-choice');
r.addEventListener('input', setR);
document.getElementById('r-value').setAttribute('value', r.value);