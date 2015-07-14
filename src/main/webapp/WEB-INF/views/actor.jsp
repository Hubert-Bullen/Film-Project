<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jeansmits
  Date: 13/07/15
  Time: 11:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>${actor.getFullName()}</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <h1>${actor.getFullName()}</h1>
            <h4>
                <div id="bio">Bio: ${actor.bio}</div>
                <div id="dob_gender">Date of Birth: ${actor.dob}, ${actor.gender}</div>
            </h4>
            <h4>Characters:</h4>
            <table id="characters" border="1" class="table table-striped">
                <tr>
                    <th>Name:</th>
                    <th>Starring in:</th>
                </tr>

                <c:forEach items="${actor.filmCharacters}" var="filmCharacter">
                <tr>
                    <td>${filmCharacter.charName}</td>
                    <td>
                    <c:forEach items="${filmCharacter.films}" var="film">
                        <div><a href="film.html?id=${film.id}"> ${film.title}</a></div>
                    </c:forEach>
                    </td>
                    </c:forEach>
                </tr>
            </table>
        </div>

    </body>
</html>