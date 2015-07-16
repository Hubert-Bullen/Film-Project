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
            <jsp:include page="/WEB-INF/views/navbar-source.jsp"></jsp:include>

            <div class="col-md-offset-3"><h1>New Film</h1></div>

            <sf:form commandName="film" action="create-film" method="post">

                <div style="align-content: center">
                    <div class="form-group">
                        <div class="col-md-4 col-md-offset-1">
                            <div class="input-group">
                                <span class="input-group-addon">Username</span>
                                <sf:input path="title" class="form-control" placeholder="Minimum 2,Maximum 50 characters"/>
                            </div>
                        </div>
                        <br/>
                    </div>
                    <div class="form-group">
                        <div class="col-md-4 col-md-offset-1">
                            <div class="input-group">
                                <span class="input-group-addon">Length</span>
                                <sf:input path="length" class="form-control" placeholder="In minutes"/>
                            </div>
                        </div>
                        <br/>
                    </div>
                    <div class="form-group">
                        <div class="col-md-7 col-md-offset-1">
                            <div class="input-group">
                                <span class="input-group-addon">Summary</span>
                                <sf:textarea path="summary" class="form-control" placeholder="Minimum 10,Maximum 500 characters"/>
                            </div>
                        </div>
                        <br/>
                    </div>
                    <div class="form-group">
                        <div class="col-md-4 col-md-offset-1">
                            <div class="input-group">
                                <span class="input-group-addon">Genre</span>
                                <sf:select path="genre" class="form-control" placeholder="Action" items="${genres}"/>
                            </div>
                        </div>
                        <br/>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2 col-md-offset-1">
                            <div class="input-group">
                                <span class="input-group-addon">Base rating</span>
                                <sf:select path="userRating" class="form-control" placeholder="5" items="${numbers}"/>
                            </div>
                        </div>
                        <br/>
                    </div>
                    <div class="form-group">
                        <div class="col-md-5 col-md-offset-1">
                            <div class="input-group">
                                <span class="input-group-addon">Director</span>
                                <sf:input path="directorFullName" class="form-control" placeholder="Minimum 2,Maximum 50 characters, First and last name"/>
                            </div>
                        </div>
                        <br/>
                    </div>
                    <div class="form-group">
                        <div class="col-md-5 col-md-offset-1">
                            <div class="input-group">
                                <span class="input-group-addon">Trailer</span>
                                <sf:input path="trailerUrl" class="form-control" placeholder="Embedded link"/>
                            </div>
                        </div>
                        <br/>
                    </div>
                </div>
                <sf:hidden path="id"/><br/>
                <div class="form-group">
                    <div class="col-md-5 col-md-offset-2" >
                        <button type="submit" class="btn btn-success btn-block">Add Film to Database</button>
                    </div>
                </div>

            </sf:form>

        </div>

    </body>
</html>