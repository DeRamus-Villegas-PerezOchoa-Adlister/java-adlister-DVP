<%--
  Created by IntelliJ IDEA.
  User: ernie
  Date: 2/15/23
  Time: 9:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Welcome to my site!" />
  </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
  <h1>Delete Profile</h1>
  <p>Are you sure you want to delete your profile and ads.</p>
  <form action="${pageContext.request.contextPath}/delete-profile" method="post">
    <button type="submit" name="deleteId" value="${user.id}" class="btn btn-block btn-danger">Delete</button>
  </form>
</div>
</body>
</html>
