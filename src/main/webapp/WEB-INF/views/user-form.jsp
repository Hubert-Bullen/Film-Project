<%--
  Created by IntelliJ IDEA.
  User: jeansmits
  Date: 13/07/15
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html>
    <head>
        <title>Register</title>
        <!-- Latest compiled and minified CSS -->
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
                    <li><a href="character-create">Create a character</a> </li>
                </ul>
            </nav>

            <h1>Register yourself</h1>

            <sf:form commandName="user" action="create-user" method="post">

                <div style="align-content: center">
                    <div class="form-group">
                        User name:
                        <sf:input path="userName" cssErrorClass="error" cssClass="form-control"/><br/>
                    </div>
                    <div class="form-group">
                        Password:
                        <sf:password path="password" cssErrorClass="error" maxlength="15" cssClass="form-control"/><br/>
                    </div>
                    <div class="form-group">
                        E-mail:
                        <sf:input path="email" cssErrorClass="error" cssClass="form-control"/><br/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-5 col-md-offset-4" >
                        <button type="submit" class="btn btn-success btn-block">Register</button>
                    </div>
                </div>

            </sf:form>

        </div>

    </body>
</html>
