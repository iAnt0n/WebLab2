'use strict';
let responses = sessionStorage.getItem('responses');
let table = document.querySelector('#result-rows');
//fill the table if on page load session storage is not empty
if (responses !== null) {
    table.insertAdjacentHTML('afterbegin', responses);
}

