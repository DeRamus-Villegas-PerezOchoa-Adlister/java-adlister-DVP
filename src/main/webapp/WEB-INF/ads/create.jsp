<%@ taglib prefix="mytags" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="mytag" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
    <div class="container">
        <h1>Create a new Ad</h1>
        <form action="${pageContext.request.contextPath}/ads/create" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">
                <mytag:message />
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <div class="form-group">
                <input type="checkbox" id="pet" name="categories" value="Pet">
                <label for="Pet"> Pet </label><br>
                <input type="checkbox" id="animal" name="categories" value="Animal">
                <label for="Animal"> Animal </label><br>
                <input type="checkbox" id="dog" name="categories" value="Dog">
                <label for="Dog"> Dog </label><br>
                <input type="checkbox" id="tool" name="categories" value="Tool">
                <label for="Tool"> Tool </label><br>
                <input type="checkbox" id="truck" name="categories" value="Truck">
                <label for="Truck"> Truck </label><br>
                <input type="checkbox" id="car" name="categories" value="Car">
                <label for="Car"> Car </label><br>
                <input type="checkbox" id="furniture" name="categories" value="Furniture">
                <label for="Furniture"> Furniture </label><br>
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
</body>
</html>
