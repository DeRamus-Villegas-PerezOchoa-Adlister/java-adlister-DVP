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
                <input id="title" name="title" class="form-control" type="text" required>
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text" required></textarea>
            </div>
            <div class="form-group">
                <input type="checkbox" id="pet" name="categories" value="1">
                <label for="Pet"> Pet </label><br>
                <input type="checkbox" id="animal" name="categories" value="2">
                <label for="Animal"> Animal </label><br>
                <input type="checkbox" id="dog" name="categories" value="3">
                <label for="Dog"> Dog </label><br>
                <input type="checkbox" id="tool" name="categories" value="4">
                <label for="Tool"> Tool </label><br>
                <input type="checkbox" id="truck" name="categories" value="5">
                <label for="Truck"> Truck </label><br>
                <input type="checkbox" id="car" name="categories" value="6">
                <label for="Car"> Car </label><br>
                <input type="checkbox" id="furniture" name="categories" value="7">
                <label for="Furniture"> Furniture </label><br>
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
</body>
</html>
