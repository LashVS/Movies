<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Save</title>
</head>
<body>


<form method="GET" action="saveResult.jsp">
    <div>Title:  <input name="Title"></div>
    <div>Director:  <input  name="Director"></div>
    <div>Release Date:  <input name="ReleaseDate"></div>
    <div>Rating:  <input name="Rating"></div>
    <div>Description:  <input name="Description"></div>
    <input type="submit">
</form>



</body>
</html>
