<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete</title>
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

<sql:update dataSource="${db}">
    DELETE FROM Movie WHERE MovieId = ?
    <sql:param value="${id}"/>
</sql:update>

<h1>DELETED!</h1>
<c:redirect url="index.jsp"/>

</body>
</html>
