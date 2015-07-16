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
            <jsp:include page="/WEB-INF/views/navbar-source.jsp"></jsp:include>

            <div class="col-md-offset-3"><h1>New Character</h1></div>

            <sf:form commandName="form">
                <div class="form-group">
                    <div class="col-md-4 col-md-offset-1">
                        <div class="input-group">
                            <span class="input-group-addon">Film</span>
                            <sf:select path="filmId" class="form-control" items="${films}" itemValue="id" itemLabel="title"/>
                        </div>
                    </div>
                    <br/>
                </div>
                <div class="form-group">
                    <div class="col-md-4 col-md-offset-1">
                        <div class="input-group">
                            <span class="input-group-addon">Actor</span>
                            <sf:select path="actorId" class="form-control" items="${actors}" itemValue="id" itemLabel="fullName"/>
                        </div>
                    </div>
                    <br/>
                </div>
                <div class="form-group">
                    <div class="col-md-4 col-md-offset-1">
                        <div class="input-group">
                            <span class="input-group-addon">Name</span>
                            <sf:input path="characterName" class="form-control" placeholder="Minimum 2,Maximum 40 characters"/>
                        </div>
                    </div>
                    <br/>
                </div>
                <div class="form-group">
                    <div class="col-md-5 col-md-offset-2" >
                        <button type="submit" class="btn btn-success btn-block">Create</button>
                    </div>
                </div>
            </sf:form>

        </div>

    </body>
</html>
