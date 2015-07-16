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
            <jsp:include page="/WEB-INF/views/navbar-source.jsp"></jsp:include>

            <div class="col-md-offset-3"><h1>New Actor</h1></div>

            <sf:form commandName="actor" action="create-actor" method="post" cssClass="form-horizontal">

                <div style="align-content: center">
                    <div class="form-group">
                        <div class="col-md-4 col-md-offset-1">
                            <div class="input-group">
                                <span class="input-group-addon">First Name</span>
                                <sf:input path="firstName" class="form-control" placeholder="Minimum 2,Maximum 15 characters"/>
                            </div>
                        </div>
                        <br/>
                    </div>
                    <div class="form-group">
                        <div class="col-md-4 col-md-offset-1">
                            <div class="input-group">
                                <span class="input-group-addon">Last Name</span>
                                <sf:input path="lastName" class="form-control" placeholder="Minimum 2,Maximum 15 characters"/>
                            </div>
                        </div>
                        <br/>
                    </div>
                    <div class="form-group">
                        <div class="col-md-8 col-md-offset-1">
                            <div class="input-group">
                                <span class="input-group-addon">Short Biography</span>
                                <sf:textarea path="bio" class="form-control" placeholder="Minimum 2,Maximum 500 characters"/>
                            </div>
                        </div>
                        <br/>
                    </div>
                    <div class="form-group">
                        <div class="col-md-4 col-md-offset-1">
                            <div class="input-group">
                                <span class="input-group-addon">Date of Birth (YYYY-MM-DD)</span>
                                <sf:input path="dob" cssErrorClass="error" cssClass="form-control"/><br/>
                            </div>
                        </div>
                        <br/>
                    </div>
                    <div class="form-group">
                        <div class="col-md-5 col-md-offset-1">
                            <div class="input-group">
                                <span class="input-group-addon">Gender</span>
                                <div>
                                <sf:radiobuttons path="gender" cssClass="radio-inline" cssErrorClass="error" items="${genders}"/>
                                </div>
                            </div>
                        </div>
                        <br/>
                    </div>

                </div>

                <div class="form-group">
                    <div class="col-md-3 col-md-offset-3" >
                        <button type="submit" class="btn btn-success btn-block">Add Actor to Database</button>
                    </div>
                </div>

                <sf:hidden path="id"/>
            </sf:form>

        </div>

    </body>
</html>
