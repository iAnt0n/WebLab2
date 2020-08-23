'use strict';
document.getElementById('clear-button').addEventListener('click', function () {
    document.getElementById('result-rows').innerHTML = '';
    sessionStorage.removeItem('responses');
});

