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
        <h1>Edit Ad</h1>
        <form action="/ads/edit" method="post">

            <%--Hidden, but needed for the table request:--%>
            <input id="id" name="id" type="hidden" value="${ad.id}">

            <%--What is seen:--%>
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text" value="${ad.title}">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text">${ad.description}</textarea>
            </div>
            <input type="submit" class="btn btn-block btn-primary" value="Update Ad">
        </form>
<%--        added the delete button to delete ads--%>
        <form action="/ads/delete?id=${ad.id}" method="post">
            <input value="delete" type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
    <div class="container">
        <p>Posted by ${user.username}. Contact me about this item at: ${user.email}</p>
    </div>
</div>
</body>
</html>
