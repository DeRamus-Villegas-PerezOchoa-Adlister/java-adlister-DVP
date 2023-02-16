<%--
  Created by IntelliJ IDEA.
  User: ernie
  Date: 2/15/23
  Time: 11:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Viewing Searchd Ads" />
  </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
  <h1>Here are the ads with the categories you selected:</h1>
  <c:forEach var="ad" items="${checkBox}">
    <div class="col-md-6">
      <h2>${ad.title}</h2>
      <p>${ad.description}</p>
    </div>
  </c:forEach>
</div>
</body>
</html>
