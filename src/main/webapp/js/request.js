'use strict';
document.getElementById("submit-button").addEventListener('click', function submit(e) {
    e.preventDefault();
    let formData = new FormData();
    let xValue;
    let rValue;
    let yValue;
    //searching for pressed X
    document.querySelectorAll('.x-choice-button').forEach(function (elem) {
        if (elem.classList.contains('x-button-active')) {
            xValue = elem.value;
        }
    });
    //searching for pressed R
    document.querySelectorAll('.r-choice-button').forEach(function (elem) {
        if (elem.classList.contains('r-button-active')) {
            rValue = elem.value;
        }
    });
    yValue = parseFloat(document.getElementById('y-value').value.replace(',', '.'));
    formData.append("x", xValue);
    formData.append("r", rValue);
    formData.append('y', yValue);
});

//         fetch('php/check.php', {
//     method: 'POST',
//     body: formData,
// })
//     .then(response => response.text())
//     .then(data => {
//             let table = document.querySelector('#result-rows');
//             table.insertAdjacentHTML('afterbegin', data);
//             //saving results for the session
//             let responses = sessionStorage.getItem('responses');
//             if (responses === null) {
//                 sessionStorage.setItem('responses', data);
//             } else {
//                 let newResponses = data + responses
//                 sessionStorage.setItem('responses', newResponses);
//             }
//         }
//     );
// }
// );

