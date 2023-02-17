<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>All the Ads!</h1>
<%--Your ads index page should contain links to each individual ad page.--%>
    <c:forEach var="ad" items="${ads}">
        <a href="${pageContext.request.contextPath}/adshow/?adId=${ad.id}">
            <div class="col-md-6">
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
            </div>
        </a>
    </c:forEach>
</div>

</body>
</html>
