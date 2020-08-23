'use strict';
//add listeners to all buttons
document.querySelectorAll('.x-choice-button').forEach(function (elem) {
    elem.addEventListener('click', function () {
        document.querySelectorAll('.x-choice-button').forEach(function (elem) {
            if (elem.classList.contains('x-button-active')) {
                elem.classList.remove('x-button-active');
            }
        });
        elem.classList.add('x-button-active');
        validateAll();
    })
});

document.querySelectorAll('.r-choice-button').forEach(function (elem) {
    elem.addEventListener('click', function () {
        document.querySelectorAll('.r-choice-button').forEach(function (elem) {
            if (elem.classList.contains('r-button-active')) {
                elem.classList.remove('r-button-active');
            }
        });
        elem.classList.add('r-button-active');
        validateAll();
    })
});