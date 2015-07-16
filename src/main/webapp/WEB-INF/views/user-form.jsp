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
            <jsp:include page="/WEB-INF/views/navbar-source.jsp"></jsp:include>

            <div class="col-md-offset-4"><h1>Register yourself</h1></div>


            <sf:form commandName="user" action="create-user" method="post" cssClass="form-horizontal">

                <div class="form-group">
                    <div class="col-md-4 col-md-offset-1">
                        <div class="input-group">
                            <span class="input-group-addon">Username</span>
                            <sf:input path="userName" class="form-control" placeholder="Minimum 9,Maximum 15 characters"/>
                        </div>
                    </div>
                    <br/>
                </div>
                <div class="form-group">
                    <div class="col-md-4 col-md-offset-1">
                        <div class="input-group">
                            <span class="input-group-addon">Password</span>
                            <sf:password path="password" cssErrorClass="error" placeholder="Minimum 9,Maximum 15 characters" cssClass="form-control"/><br/>
                        </div>
                    </div>
                    <br/>
                </div>
                <div class="form-group">
                    <div class="col-md-6 col-md-offset-1">
                        <div class="input-group">
                            <span class="input-group-addon">Email</span>
                            <sf:input path="email" cssErrorClass="error" cssClass="form-control" placeholder="Optional,but advised"/><br/>
                        </div>
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
