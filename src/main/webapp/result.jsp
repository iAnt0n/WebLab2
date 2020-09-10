<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>WebLab2</title>
    <link href="style.css" rel="stylesheet">
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
        <tr>
            <td>
                <c:out value="${requestScope.model.x}"/>
            </td>
            <td>
                <c:out value="${requestScope.model.y}"/>
            </td>
            <td>
                <c:out value="${requestScope.model.r}"/>
            </td>
            <td>
                <c:out value="${requestScope.model.result}"/>
            </td>
            <td>
                <c:out value="${requestScope.model.reqTime}"/>
            </td>
            <td>
                <c:out value="${requestScope.model.compTime} ns"/>
            </td>
        </tr>
        </tbody>
    </table>
    <form action="" method="get">
        <input type="submit" value="Return" class="content submit-button">
    </form>
</section>

</body>
</html>