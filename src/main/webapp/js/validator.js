'use strict';

function isValidY() {
    let y = document.getElementById('y-choice').value.substring(0,14).replace(',', '.');
    if (y !== "") {
        y = parseFloat(y);
        return !Number.isNaN(y) && y > -3 && y < 5;
    }
    return false;
}

function isValidX() {
    let xButtons = document.querySelectorAll('.x-choice-button');
    for (let i = 0; i < xButtons.length; i++) {
        if (xButtons[i].classList.contains('x-button-active')) {
            return true;
        }
    }
    return false;
}

function isValidR() {
    let rButtons = document.querySelectorAll('.r-choice-button');
    for (let i = 0; i < rButtons.length; i++) {
        if (rButtons[i].classList.contains('r-button-active')) {
            return true;
        }
    }
    return false;
}


function validateAll() {
    const dot = document.getElementById('target-dot');
    const yText = document.getElementById('y-text');
    const yField = document.getElementById('y-choice');
    if (isValidX()) {
        document.getElementById('x-text').classList.toggle('invalid-choice', false);
        document.getElementById('x-text').classList.toggle('valid-choice', true);
    } else {
        document.getElementById('x-text').classList.toggle('valid-choice', false);
        document.getElementById('x-text').classList.toggle('invalid-choice', true);
    }

    if (isValidY()) {
        yText.classList.toggle('invalid-choice', false);
        yText.classList.toggle('valid-choice', true);
        yField.classList.toggle('invalid-choice', false);
        yField.classList.toggle('valid-choice', true);
        document.getElementById('y-value').setAttribute('value', yField.value);
    } else {
        yText.classList.toggle('valid-choice', false);
        yText.classList.toggle('invalid-choice', true);
        yField.classList.toggle('invalid-choice', true);
        yField.classList.toggle('valid-choice', false);
        document.getElementById('y-value').setAttribute('value', "");
    }

    if (isValidR()) {
        document.getElementById('r-text').classList.toggle('invalid-choice', false);
        document.getElementById('r-text').classList.toggle('valid-choice', true);
    } else {
        document.getElementById('r-text').classList.toggle('valid-choice', false);
        document.getElementById('r-text').classList.toggle('invalid-choice', true);
    }

    if (isValidX() && isValidY() && isValidR()) {

        let r = Number(document.getElementsByClassName('r-button-active')[0].value);
        let x = Number(document.getElementsByClassName('x-button-active')[0].value);
        let y = parseFloat(document.getElementById('y-choice').value.replace(',', '.'));
        let calcX = 200 + x * 180 / r; //point coordinates to svg coordinates
        let calcY = 200 - y * 180 / r;
        dot.setAttribute('r', "3");
        dot.setAttribute('cx', String(calcX));
        dot.setAttribute('cy', String(calcY));
        document.getElementById('submit-button').removeAttribute("disabled");
    } else {
        document.getElementById('submit-button').setAttribute("disabled", "");
        dot.setAttribute('r', "0");
    }

}