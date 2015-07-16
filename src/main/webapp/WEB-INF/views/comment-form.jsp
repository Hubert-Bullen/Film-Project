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
        <title>Comment</title>
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

            <h1>Comment</h1>

            <sf:form commandName="comment" action="create-comment" method="post">

                <div style="align-content: center">
                    <div class="form-group">
                        Comment:
                        <sf:textarea path="content" cssErrorClass="error" cssClass="form-control"/><br/>
                    </div>
                    <div class="form-group">
                        Rating:
                        <sf:select path="rating" cssErrorClass="error" cssClass="form-control" items="${numbers}"/><br/>
                    </div>
                    <input type="hidden" name="filmId" value="${param.filmId}"/>

                </div>
                <div class="form-group">
                    <div class="col-md-5 col-md-offset-4" >
                        <button type="submit" class="btn btn-success btn-block">Post comment</button>
                    </div>
                </div>

            </sf:form>

        </div>

    </body>
</html>
