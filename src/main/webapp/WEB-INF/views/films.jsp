<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jeansmits
  Date: 13/07/15
  Time: 13:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>All Films in DB</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <jsp:include page="/WEB-INF/views/navbar-source.jsp"></jsp:include>

            <h1>Films</h1>
            <table border="1" class="table table-striped">
                <tr>
                    <th>Title</th>
                    <th>Details</th>
                </tr>
                <c:forEach items="${films}" var="film">
                    <tr>
                        <td>
                            ${film.title}
                        </td>
                        <td>
                            <div>
                                <a href="film.html?id=${film.id}"><span class="glyphicon glyphicon-film" style="color: black"/></a>

                                <a href="film-form.html?id=${film.id}"><span class="glyphicon glyphicon-pencil"/></a>

                                <a href="remove-film.html?id=${film.id}"><span class="glyphicon glyphicon-remove" style="color: red"/></a>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <a href="film-form.html" class="btn btn-success glyphicon glyphicon-plus"></a>

        </div>

    </body>


</html>
