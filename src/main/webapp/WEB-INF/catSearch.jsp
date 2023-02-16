<%--
  Created by IntelliJ IDEA.
  User: ernie
  Date: 2/15/23
  Time: 10:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Please Log In"/>
  </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">
  <h1>Search by Category</h1>
  <form action="${pageContext.request.contextPath}/search_cats" method="post">
    <div class="form-group">
      <input type="checkbox" id="pet" name="categories" value="pet">
      <label for="Pet"> Pet </label><br>
      <input type="checkbox" id="animal" name="categories" value="animal">
      <label for="Animal"> Animal </label><br>
      <input type="checkbox" id="dog" name="categories" value="dog">
      <label for="Dog"> Dog </label><br>
      <input type="checkbox" id="tool" name="categories" value="tool">
      <label for="Tool"> Tool </label><br>
      <input type="checkbox" id="truck" name="categories" value="truck">
      <label for="Truck"> Truck </label><br>
      <input type="checkbox" id="car" name="categories" value="car">
      <label for="Car"> Car </label><br>
      <input type="checkbox" id="furniture" name="categories" value="furniture">
      <label for="Furniture"> Furniture </label><br>
    </div>
    <input type="submit" class="btn btn-block btn-primary">
    </form>

    <div class="container">
      <h1>Here are the ads with the categories selected:</h1>
      <c:forEach var="ad" items="${checkBox}">
        <div class="col-md-6">
          <h2>${ad.title}</h2>
          <p>${ad.description}</p>
        </div>
      </c:forEach>
    </div>

</div>
</body>
</html>
