'use strict';
document.getElementById('graph').addEventListener('click', function (e) {
    let r = document.getElementById('r-choice').value;
    if (!r) {
        return;
    }
    let svg = document.getElementById('graph');
    let htmlCoordinatesPoint = svg.createSVGPoint();
    htmlCoordinatesPoint.x = e.clientX;
    htmlCoordinatesPoint.y = e.clientY;
    let svgPoint = htmlCoordinatesPoint.matrixTransform(svg.getScreenCTM().inverse());
    let calcX = r*(svgPoint.x - 200) / 180; //svg coordinates to point coordinates
    let calcY = r*(svgPoint.y-200) / -180;
    document.getElementById('y-value').setAttribute('value', String(calcY));
    document.getElementById('x-value').setAttribute('value', String(calcX));

    const xText = document.getElementById('x-header');
    const xElem = document.getElementById('x-choice');
    const yText = document.getElementById('y-header');
    xText.classList.remove("invalid", "valid");
    xElem.classList.remove("invalid", "valid");
    yText.classList.remove("invalid", "valid");

    xElem.value = "";
    const radio = document.querySelector('input[type="radio"]:checked');
    if (radio) radio.checked="";
    document.getElementById('form').submit();
});