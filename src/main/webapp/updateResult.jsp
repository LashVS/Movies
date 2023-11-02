<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Result</title>
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
    String Title = request.getParameter("Title");
    String Director = request.getParameter("Director");
    String ReleaseDate = request.getParameter("ReleaseDate");
    String Rating = request.getParameter("Rating");
    String Description = request.getParameter("Description");
%>

<c:set var="id" value="<%=Integer.parseInt(id)%>" />
<c:set var="Title" value="<%=Title%>" />
<c:set var="Director" value="<%=Director%>" />
<c:set var="ReleaseDate" value="<%=ReleaseDate%>" />
<c:set var="Rating" value="<%=Rating%>" />
<c:set var="Rating" value="<%=Rating%>" />
<c:set var="Description" value="<%=Description%>" />




<sql:update  dataSource="${db}">
    UPDATE Movie
        SET Title = '${Title}',
        Director = '${Director}',
        ReleaseDate = '${ReleaseDate}',
        Rating = '${Rating}',
        Description = '${Description}'
    WHERE MovieId = ?;
    <sql:param value="${id}"/>
</sql:update>

<h1>UPDATED!</h1>

<c:redirect url="index.jsp"></c:redirect>

</body>
</html>
