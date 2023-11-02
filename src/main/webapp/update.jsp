<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update</title>
</head>
<body>

<script>
    function formatDate(value) {
        var date = new Date(value);
        var day = ('0' + date.getDate()).slice(-2);
        var month = ('0' + (date.getMonth() + 1)).slice(-2);
        var year = date.getFullYear();

        return year + '.' + month + '.' + day;
    }

    function updateFormattedDate() {
        var dateInput = document.getElementById('date-picker');
        var formattedDateContainer = document.getElementById('formatted-date');

        formattedDateContainer.textContent = formatDate(dateInput.value);
    }
</script>

<sql:setDataSource
        var="db"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/giorgi"
        user="root"
        password="mysql"/>

<%
    String id = request.getParameter("id");
%>

<c:set var="id" value="<%=id%>" />

<sql:query var="results" dataSource="${db}">
    SELECT * FROM Movie WHERE MovieId = ?;
    <sql:param value="${id}"/>
</sql:query>

<form method="GET" action="updateResult.jsp">
<c:forEach items="${results.rows}" var="movie">
    <input type="hidden" name="id" value="${id}">
    <div>Title:  <input value="${movie.Title}" name="Title"></div>
    <div>Director:  <input value="${movie.Director}" name="Director"></div>
    <div>Release Date:  <input value="${movie.ReleaseDate}" name="ReleaseDate" type="date" id="date-picker" onchange="updateFormattedDate()"></div>
    <div>Rating:  <input value="${movie.Rating}" name="Rating"></div>
    <div>Description:  <input value="${movie.Description}" name="Description"></div>
    <input type="submit">
</c:forEach>
</form>


</body>
</html>
