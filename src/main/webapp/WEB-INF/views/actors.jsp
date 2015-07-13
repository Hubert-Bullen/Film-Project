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
            <h1>Actors</h1>
            <table border="1" class="table table-striped">
                <tr>
                    <th>Name</th>
                    <th>Details</th>
                </tr>
                <c:forEach items="${actors}" var="actor">
                    <tr>
                        <td>
                                ${actor.getFullName()}
                        </td>
                        <td>
                            <div>
                                <a href="actor.html?id=${actor.id}"><span class="glyphicon glyphicon-user"/></a>

                                <a href="home.html" class=""><span class="glyphicon glyphicon-pencil"/></a> <!--TODO: Add functionality. -->

                                <a href="home.html"><span class="glyphicon glyphicon-remove"/></a> <!--TODO: Add functionality. -->
                            </div>
                        </td>
                    </tr>
                </c:forEach>
            </table>

        </div>

    </body>


</html>
