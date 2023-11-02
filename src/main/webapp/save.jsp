<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Save</title>
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

<form method="GET" action="saveResult.jsp">
    <div>Title:  <input name="Title"></div>
    <div>Director:  <input  name="Director"></div>
    <div>Release Date:  <input name="ReleaseDate" type="date" id="date-picker" onchange="updateFormattedDate()"></div>
    <div>Rating:  <input name="Rating"></div>
    <div>Description:  <input name="Description"></div>
    <input type="submit">
</form>



</body>
</html>
