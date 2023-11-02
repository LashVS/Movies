<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update</title>
</head>
<body>

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
    <div>Release Date:  <input value="${movie.ReleaseDate}" name="ReleaseDate"></div>
    <div>Rating:  <input value="${movie.Rating}" name="Rating"></div>
    <div>Description:  <input value="${movie.Description}" name="Description"></div>
    <input type="submit">
</c:forEach>
</form>


</body>
</html>
