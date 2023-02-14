<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Searching Ads"/>
    </jsp:include>
</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<div>
<h1>What Ad would you like to search.</h1>
    <form action="/searched-ads" method="POST">
        <div class="form-group">
            <label for="searched_ads">search</label>
            <input id="searched_ads" name="searched_ads" class="form-control" type="text">
        </div>
        <input type="submit" class="btn btn-primary btn-block" value="Search ads">
    </form>

    <div class="container">
        <h1>Here are the Ads matching your request!</h1>
        <jsp:useBean id="searched_ads" scope="session" type="java.util.List"/>
        <c:forEach var="ad" items="${searched_ads}">
            <div class="col-md-6">
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
            </div>
        </c:forEach>
    </div>
</div>

</body>
</html>
