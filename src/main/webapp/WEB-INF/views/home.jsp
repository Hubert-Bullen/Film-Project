<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <title>Homepage</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <nav>
                <ul class="nav nav-tabs">
                    <li><a href="/">Home</a> </li>
                    <li><a href="films.html">Films in DB</a> </li>
                    <li><a href="actors.html">Actors in DB</a> </li>
                </ul>
            </nav>

            <h1>Home</h1>
            <p>This is the home page.</p>
            <%--<a href="film.html?id=1">Iron Man details</a>--%>
            <%-- <a href="chooser.html">Model chooser</a>--%>
        </div>
    </body>
</html>
