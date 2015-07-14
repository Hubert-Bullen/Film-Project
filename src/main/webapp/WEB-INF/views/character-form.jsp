<%--
  Created by IntelliJ IDEA.
  User: jeansmits
  Date: 13/07/15
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html>
    <head>
        <title>Create Actor</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <h1>Add character</h1>

            <sf:form commandName="form">
                <div>
                    <sf:select path="filmId" items="${films}" itemValue="id" itemLabel="title"/>
                </div>
                <div>
                    <sf:select path="actorId" items="${actors}" itemValue="id" itemLabel="firstName"/>
                </div>
                <div>
                    <sf:input path="characterName"/>
                </div>
                <input type="submit" value="Create"/>
            </sf:form>

        </div>

    </body>
</html>
