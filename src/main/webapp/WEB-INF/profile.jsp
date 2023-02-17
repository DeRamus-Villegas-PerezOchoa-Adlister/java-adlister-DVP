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
        <div>
            <a href="/profile-edit">Edit Profile</a><br>
            <a href="/delete-profile">Delete Profile</a><br>
        </div>
        <h2>Here are your postings:</h2>
        <c:forEach var="ad" items="${ads2}">
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
