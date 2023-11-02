<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Movies</title>
</head>
<body>

<sql:setDataSource
        var="db"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/giorgi"
        user="root"
        password="mysql"/>

<sql:query var="results" dataSource="${db}">
    SELECT * FROM Movie;
</sql:query>


<a href="save.jsp"> <h1>Add New Movie</h1> </a>


<table border="2px" width="100%">
    <tr>
        <th>Movie Id</th>
        <th>Title</th>
        <th>Director</th>
        <th>Release Date</th>
        <th>Rating</th>
        <th>Description</th>

    </tr>

    <c:forEach items="${results.rows}" var="movies">
        <tr>
            <th>${movies.MovieId}</th>
            <th>${movies.Title}</th>
            <th>${movies.Director}</th>
            <th>${movies.ReleaseDate}</th>
            <th>${movies.Rating}</th>
            <th>${movies.Description}</th>
            <th><a href="update.jsp?id=${movies.MovieId}" style="color: blue">UPDATE</a> </th>
            <th><a href="delete.jsp?id=${movies.MovieId}" style="color: red">DELETE</a></th>
        </tr>
    </c:forEach>


</table>

</body>
</html>