<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand">Adlister</a>
        </div>
        <div class="nav navbar-nav navbar-right">
            <c:choose>
                <c:when test="${sessionScope.user == null}">
                    <li><a href="/ads">View All Ads</a></li>
                    <li>
                        <form class="form-inline" action="/search_ads" method="POST">
                            <label for="searched_ads"></label>
                            <input type="text" name="searched_ads" id="searched_ads" placeholder="Search Ads">
                            <button class="btn btn-info my-2 my-sm-0" type="submit">Find</button>
                        </form>
                    </li>
                    <li><a href="/login">Login</a></li>
                    <li><a href="/register">Register</a></li>
                </c:when>
                <c:otherwise>
                    <li><a href="/ads">View All Ads</a></li>
                    <li><a href="/ads/create">Create Ad</a></li>
                    <li>
                        <form class="form-inline" action="/search_ads" method="POST">
                            <label for="searched_ads"></label>
                            <input type="text" name="searched_ads" id="searched_ads" placeholder="Search Ads">
                            <button class="btn btn-info my-2 my-sm-0" type="submit">Find</button>
                        </form>
                    </li>
                    <li><a href="/profile">My Profile</a></li>
                    <li><a href="/logout">Logout</a></li>
                </c:otherwise>
            </c:choose>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>