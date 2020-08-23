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
    <table id="header-table">
        <tbody>
        <tr>
            <td class="left-header">
                Лабораторная работа №1 по веб-программированию
            </td>
            <td class="right-header">
                Кораблин Антон
            </td>
        </tr>
        <tr>
            <td class="left-header">
                Вариант 2614
            </td>
            <td class="right-header">
                P3230
            </td>
        </tr>
        </tbody>
    </table>
</header>

<section id="content">
    <table id="content-table">
        <tbody>
        <tr class="content-row">
            <td width="1%">
                <svg height="400" width="400">
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
                             fill-opacity="0.3" points="200,20 290,200 200,200" stroke="teal"></polygon>
                    <path class="circle-graph" d="M 20 200 A 180 180 0 0 0 200 380 L 200 200 Z"
                          fill="teal" fill-opacity="0.3" stroke="teal"></path>

                    <circle cx="150" cy="150" fill="red" id="target-dot" r="0"></circle>
                </svg>
            </td>

            <td>
                <form id="user-input" action="<c:url value=""/>" method="post">
                    <table id="input-area">
                        <tbody>
                        <tr>
                            <td>
                                <table>
                                    <tbody>
                                    <tr>
                                        <td class="value-header" colspan="3" id="x-text">
                                            X value
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input class="x-choice-button" onclick="validateAll()" type="button"
                                                   value="-4">
                                        </td>
                                        <td>
                                            <input class="x-choice-button" onclick="validateAll()" type="button"
                                                   value="-3">
                                        </td>

                                        <td>
                                            <input class="x-choice-button" onclick="validateAll()" type="button"
                                                   value="-2">
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <input class="x-choice-button" onclick="validateAll()" type="button"
                                                   value="-1">
                                        </td>

                                        <td>
                                            <input class="x-choice-button" onclick="validateAll()" type="button"
                                                   value="0">
                                        </td>

                                        <td>
                                            <input class="x-choice-button" onclick="validateAll()" type="button"
                                                   value="1">
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <input class="x-choice-button" onclick="validateAll()" type="button"
                                                   value="2">
                                        </td>

                                        <td>
                                            <input class="x-choice-button" onclick="validateAll()" type="button"
                                                   value="3">
                                        </td>

                                        <td>
                                            <input class="x-choice-button" type="button" value="4">
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <label class="value-header" for="y-value" id="y-text">Y value</label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input class="y-choice-field" id="y-value" name="y" oninput="validateAll()"
                                       placeholder="(-3...5) <=14 digits" type="text" value="">
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <table>
                                    <tbody>
                                    <tr>
                                        <td class="value-header" colspan="5" id="r-text">
                                            R value
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input class="r-choice-button" onclick="validateAll()" type="button"
                                                   value="1">
                                        </td>
                                        <td>
                                            <input class="r-choice-button" onclick="validateAll()" type="button"
                                                   value="1.5">
                                        </td>
                                        <td>
                                            <input class="r-choice-button" onclick="validateAll()" type="button"
                                                   value="2">
                                        </td>
                                        <td>
                                            <input class="r-choice-button" onclick="validateAll()" type="button"
                                                   value="2.5">
                                        </td>
                                        <td>
                                            <input class="r-choice-button" onclick="validateAll()" type="button"
                                                   value="3">
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table>
                                    <tbody>
                                    <tr>
                                        <td class="form-button-cell">
                                            <input disabled id="submit-button" type="submit" value="Submit">
                                        </td>
                                        <td class="form-button-cell">
                                            <input id="clear-button" type="button" value="Clear">
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>

                        </tbody>
                    </table>
                    <input id="x-value" type="hidden" value="">
                    <input id="r-value" type="hidden" value="">
                </form>
            </td>
        </tr>
        </tbody>
    </table>
</section>

<section>
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

        </tbody>
    </table>
</section>


<footer>
    <table>
        <tbody>
        <tr>
            <td>
                <a href="http://www.github.com/iAnt0n/WebLab1">
                    <svg aria-hidden="true" class="github-icon" height="32" viewBox="0 0 16 16" width="32">
                        <path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"
                              fill-rule="evenodd">
                        </path>
                    </svg>
                </a>
            </td>
        </tr>
        </tbody>
    </table>
</footer>

<%--<script src="js/request.js"></script>--%>
<script src="js/validator.js"></script>
<script src="js/buttonChecks.js"></script>
<script src="js/reloadTable.js"></script>
<script src="js/clear.js"></script>
</body>
</html>