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
        <title>${film.title}</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <jsp:include page="/WEB-INF/views/navbar-source.jsp"></jsp:include>

            <h1>${film.title}</h1>
            <h4>
                <div id="genre_length">Genre: ${film.genre}, Movie Length: ${film.length} minutes</div>
                <div id="rating">Current Rating: ${film.userRating}</div>
                <div id="summary">Summary: ${film.summary}</div>
                <div id="director">${film.directorFullName}</div>
            </h4>
                <iframe id="trailer" width="420" height="345" src="${film.trailerUrl}" frameborder="0" allowfullscreen></iframe>
                <h4>Characters:</h4>
                <table id="characters" border="1" class="table table-striped">
                    <tr>
                        <th>Name:</th>
                        <th>Portrayed by:</th>
                    </tr>

                    <c:forEach items="${film.filmCharacters}" var="filmCharacter">
                        <tr>
                            <td>${filmCharacter.charName}</td>
                            <td>
                        <c:forEach items="${filmCharacter.actors}" var="actor">
                                <div><a href="actor.html?id=${actor.id}">${actor.getFullName()}</a></div>
                        </c:forEach>
                            </td>
                    </c:forEach>
                        </tr>
                </table>
            <c:forEach items="${film.comments}" var="comment">
                <div>
                    Comment:
                    <br/>
                    Rating: ${comment.rating}
                    <br/>
                    ${comment.content}
                </div>
            </c:forEach>
            <a href="comment-form.html?filmId=${film.id}" class="btn btn-warning glyphicon glyphicon-comment"></a>

        </div>

    </body>
</html>
