<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>WebLab2</title>
    <link href="<c:url value='style.css'/>" rel="stylesheet">
</head>
<body>
<header>
    <div class="content">
            Лабораторная работа №2 по веб-программированию <br>
            Вариант 2631
    </div>
    <div class="text-box-right content">
            Кораблин Антон <br>
            P3230
    </div>
</header>

<section class="main">
    <section class="flex-evenly wrap">
        <div class="graph content">
            <svg height="400" width="400" id="graph">
                <line class="axis" stroke="black" x1="0" x2="400" y1="200" y2="200"></line>
                <line class="axis" stroke="black" x1="200" x2="200" y1="0" y2="400"></line>

                <line class="arrow" stroke="black" x1="390" x2="400" y1="195" y2="200"></line>
                <line class="arrow" stroke="black" x1="390" x2="400" y1="205" y2="200"></line>

                <line class="arrow" stroke="black" x1="195" x2="200" y1="10" y2="0"></line>
                <line class="arrow" stroke="black" x1="200" x2="205" y1="0" y2="10"></line>

                <line class="point-line" stroke="black" x1="20" x2="20" y1="195" y2="205"></line>
                <line class="point-line" stroke="black" x1="110" x2="110" y1="195" y2="205"></line>
                <line class="point-line" stroke="black" x1="290" x2="290" y1="195" y2="205"></line>
                <line class="point-line" stroke="black" x1="380" x2="380" y1="195" y2="205"></line>

                <line class="point-line" stroke="black" x1="195" x2="205" y1="20" y2="20"></line>
                <line class="point-line" stroke="black" x1="195" x2="205" y1="110" y2="110"></line>
                <line class="point-line" stroke="black" x1="195" x2="205" y1="290" y2="290"></line>
                <line class="point-line" stroke="black" x1="195" x2="205" y1="380" y2="380"></line>

                <text class="point-text" x="10" y="190">-R</text>
                <text class="point-text" x="100" y="190">-R/2</text>
                <text class="point-text" x="285" y="190">R/2</text>
                <text class="point-text" x="375" y="190">R</text>
                <text class="point-text" x="207" y="385">-R</text>
                <text class="point-text" x="207" y="295">-R/2</text>
                <text class="point-text" x="207" y="115">R/2</text>
                <text class="point-text" x="207" y="25">R</text>

                <polygon class="rectangle-graph" fill="teal"
                         fill-opacity="0.3" points="20,200 20,110 200,110 200,200" stroke="teal"></polygon>
                <polygon class="triangle-graph" fill="teal"
                         fill-opacity="0.3" points="290,200 200,290 200,200" stroke="teal"></polygon>
                <path class="circle-graph" d="M 20 200 A 180 180 0 0 0 200 380 L 200 200 Z"
                      fill="teal" fill-opacity="0.3" stroke="teal"></path>

                <circle cx="150" cy="150" fill="red" id="target-dot" r="0"></circle>
                <c:forEach var="dataRow" items="${sessionScope.data}">
                    <circle r="3" fill="gray" class="svg-dot" cx=${200 + dataRow.x * 180}
                            cy=${200 - dataRow.y * 180}
                            data-x=${dataRow.x} data-y=${dataRow.y}></circle>
                </c:forEach>
            </svg>
        </div>


        <div class="flex-evenly flex-vertical content">
            <div class="input-field">
                <label id="x-header" for="x-choice" class="input-header neutral">X value</label>
                <input type="text" id="x-choice" class="input-text neutral" name="x"
                       placeholder="(-3...5)" autocomplete="off">
            </div>

            <div class="input-field">
                <div id="y-header" class="input-header neutral">Y value</div>
                <div class="flex-centered wrap">
                    <div class="radio-button">
                        <input id="y-choice-5" type="radio" value="-5" name="y-choice" >
                        <label for="y-choice-5">-5</label>
                    </div>
                    <div class="radio-button">
                        <input id="y-choice-4" type="radio" value="-4" name="y-choice">
                        <label for="y-choice-4">-4</label>
                    </div>
                    <div class="radio-button">
                        <input id="y-choice-3" type="radio" value="-3" name="y-choice">
                        <label for="y-choice-3">-3</label>
                    </div>
                    <div class="radio-button">
                        <input id="y-choice-2" type="radio" value="-2" name="y-choice">
                        <label for="y-choice-2">-2</label>
                    </div>
                    <div class="radio-button">
                        <input id="y-choice-1" type="radio" value="-1" name="y-choice">
                        <label for="y-choice-1">-1</label>
                    </div>
                    <div class="radio-button">
                        <input id="y-choice0" type="radio" value="0" name="y-choice">
                        <label for="y-choice0">0</label>
                    </div>
                    <div class="radio-button">
                        <input id="y-choice1" type="radio" value="1" name="y-choice">
                        <label for="y-choice1">1</label>
                    </div>
                    <div class="radio-button">
                        <input id="y-choice2" type="radio" value="2" name="y-choice">
                        <label for="y-choice2">2</label>
                    </div>
                    <div class="radio-button">
                        <input id="y-choice3" type="radio" value="3" name="y-choice">
                        <label for="y-choice3">3</label>
                    </div>
                </div>
            </div>

            <div class="input-field">
                <div id="r-header" class="input-header valid">R value</div>
                <select id="r-choice" class="input-select valid" name="r-choice">
                    <option>1</option>
                    <option>1.5</option>
                    <option>2</option>
                    <option>2.5</option>
                    <option>3</option>
                </select>
                <label for="r-choice"></label>
            </div>
            <form action="<c:url value=""/>">
                <div class="input-header">
                    <input id="x-value" name="x" type="hidden" value="">
                    <input id="r-value" name="r" type="hidden" value="">
                    <input id="y-value" name="y" type="hidden" value="">
                    <input id="submit-button" class="submit-button content" type="submit" value="Submit" disabled>
                </div>
            </form>
        </div>
    </section>
</section>

<section class="result-table">
    <table id="result-table">
        <thead>
        <tr id="result-header">
            <th>
                X
            </th>
            <th>
                Y
            </th>
            <th>
                R
            </th>
            <th>
                Result
            </th>
            <th>
                Time of request
            </th>
            <th>
                Computation time
            </th>
        </tr>
        </thead>
        <tbody id="result-rows">
        <c:forEach var="i" begin="1" end="${sessionScope.data.size()}" step="1">
            <tr>
                <td>${sessionScope.data.get(sessionScope.data.size()-i).x}</td>
                <td>${sessionScope.data.get(sessionScope.data.size()-i).y}</td>
                <td>${sessionScope.data.get(sessionScope.data.size()-i).r}</td>
                <td>${sessionScope.data.get(sessionScope.data.size()-i).result}</td>
                <td>${sessionScope.data.get(sessionScope.data.size()-i).reqTime}</td>
                <td>${sessionScope.data.get(sessionScope.data.size()-i).compTime} ns</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</section>

<footer>
    <svg class="github-icon content" height="32" viewBox="0 0 16 16" width="32">
        <a href="http://www.github.com/iAnt0n/WebLab2">
            <path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"
                  fill-rule="evenodd">
            </path>
        </a>
    </svg>
</footer>

<script src="js/formFiller.js"></script>
<script src="js/svgClick.js"></script>
</body>
</html>