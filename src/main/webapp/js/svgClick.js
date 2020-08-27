'use strict';
document.getElementById('graph').addEventListener('click', function (e) {
    let svg = document.getElementById('graph');
    let htmlCoordinatesPoint = svg.createSVGPoint();
    htmlCoordinatesPoint.x = e.clientX;
    htmlCoordinatesPoint.y = e.clientY;
    let svgPoint = htmlCoordinatesPoint.matrixTransform(svg.getScreenCTM().inverse());
    let r = document.getElementById('r-value').getAttribute('value');
    let calcX = r*(svgPoint.x - 200) / 180; //svg coordinates to point coordinates
    let calcY = r*(svgPoint.y-200) / -180;
    document.getElementById('y-value').setAttribute('value', String(calcY));
    document.getElementById('x-value').setAttribute('value', String(calcX));

    const dot = document.getElementById('target-dot');
    dot.setAttribute('r', "3");
    dot.setAttribute('cx', String(svgPoint.x));
    dot.setAttribute('cy', String(svgPoint.y));

    document.getElementById('y-choice').value = "";
    document.querySelector('.x-button-active').classList.remove('x-button-active');
    document.getElementById('submit-button').removeAttribute("disabled");
});