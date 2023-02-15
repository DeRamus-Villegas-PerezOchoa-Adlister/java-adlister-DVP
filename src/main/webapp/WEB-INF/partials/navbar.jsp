<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
        <div class="nav navbar-nav navbar-right">
            <li><form class="form-inline" action="/search_ads" method="POST">
                <label for="searched_ads"></label>
                <input type="text" name="searched_ads" id="searched_ads" placeholder="">
                <button class="btn btn-info my-2 my-sm-0" type="submit">Find</button>
            </form></li>
            <div class="nav navbar-nav navbar">
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/login">Login</a></li>
            <li><a href="/logout">Logout</a></li>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
