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

            <sf:form commandName="actor" action="create" method="post" cssClass="">

                <div style="align-content: center">
                    <div class="form-group">
                        First name:
                        <sf:input path="firstName" cssErrorClass="error" maxlength="15"/><br/>
                    </div>
                    <div class="form-group">
                        Last name:
                        <sf:input path="lastName" cssErrorClass="error" maxlength="15"/><br/>
                    </div>
                    <div class="form-group">
                        Short biography:
                        <sf:textarea path="bio" cssErrorClass="error"/><br/>
                    </div>
                    <div class="form-group">
                        Gender:
                            <%--<sf:radiobuttons path="genre" cssErrorClass="error" items="genders"/>--%><br/>
                    </div>
                </div>
                <sf:hidden path="id"/><br/>
                <div class="form-group">
                    <div class="col-md-5 col-md-offset-4" >
                        <button type="submit" class="btn btn-success btn-block">Add Actor to Database</button>
                    </div>
                </div>

            </sf:form>

        </div>

    </body>
</html>
