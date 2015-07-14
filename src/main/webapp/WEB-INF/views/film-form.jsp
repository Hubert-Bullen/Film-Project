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
        <title>Create Film</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <h1>Add a film</h1>

            <sf:form commandName="film" action="create" method="post" cssClass="">

                <div style="align-content: center">
                    <div class="form-group">
                        Title:
                        <sf:input path="title" cssErrorClass="error" maxlength="50"/><br/>
                    </div>
                    <div class="form-group">
                        Length:
                        <sf:input path="length" cssErrorClass="error"/><br/>
                    </div>
                    <div class="form-group">
                        Summary:
                        <sf:textarea path="summary" cssErrorClass="error"/><br/>
                    </div>
                    <div class="form-group">
                        Genre:
                        <%--<sf:select path="genre" cssErrorClass="error" items="genres"/>--%><br/>
                    </div>
                    <div class="form-group">
                        Director:
                        <sf:input path="directorFullName" cssErrorClass="error" maxlength="50"/><br/>
                    </div>
                    <div class="form-group">
                        Rating:
                        <sf:input path="userRating" cssErrorClass="error"/><br/>
                    </div>
                    <div class="form-group">
                        Trailer:
                        <sf:input path="trailerUrl" cssErrorClass="error"/><br/>
                    </div>
                </div>
                <sf:hidden path="id"/><br/>
                <div class="form-group">
                    <div class="col-md-5 col-md-offset-4" >
                        <button type="submit" class="btn btn-success btn-block">Add Film to Database</button>
                    </div>
                </div>

            </sf:form>

        </div>

    </body>
</html>