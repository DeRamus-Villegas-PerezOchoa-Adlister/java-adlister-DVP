<%--
  Created by IntelliJ IDEA.
  User: ernie
  Date: 2/15/23
  Time: 8:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Your Profile" />
  </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
  <h1>Welcome, ${sessionScope.user.username}!</h1>
  <h2>Edit Profile:</h2>

  <form action="${pageContext.request.contextPath}/profile-edit" method="post">
    <div>
      <label for="username">Name</label>
      <input id="username" name="username" class="form-control" type="text" value="${user.username}" required>
    </div>
    <div class="form-group">
      <label for="email">Email</label>
      <input id="email" name="email" class="form-control" type="email" value="${user.email}" required>
    </div>
    <div class="form-group">
      <label for="password">New Password</label>
      <input id="password" name="password" class="form-control" type="password" required>
    </div>
    <button type="submit" name="edit" value="${user.id}" class="btn btn-block btn-primary">Submit Edits</button>
  </form>
</div>

</body>
</html>
