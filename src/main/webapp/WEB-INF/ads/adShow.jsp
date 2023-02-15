<%--
  Created by IntelliJ IDEA.
  User: tony
  Date: 2/13/23
  Time: 2:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Ad Descritpion" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<%--Create a page that shows the information about an individual ad.
    This page should show all the information about that ad, as well as
    the information about the user that posted the ad.--%>
<div class="container">
    <h1>Details on this ad.</h1>
    <div class="container">
        <h3>${ad.title}!</h3>
        <p>${ad.description}</p>
    </div>
    <div class="container">
        <p>Posted by ${user.username}. Contact me about this item at: ${user.email}</p>
    </div>
</div>
</body>
</html>
