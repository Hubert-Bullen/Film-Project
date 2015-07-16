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
            <jsp:include page="/WEB-INF/views/navbar-source.jsp"></jsp:include>

            <h1>Welcome to your own personal Film database!</h1>
            <p>Use the navigation bar to start working on it!</p>
        </div>
    </body>
</html>
