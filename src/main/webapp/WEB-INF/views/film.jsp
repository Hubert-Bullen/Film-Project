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
            <nav>
                <ul class="nav nav-tabs">
                    <li><a href="/">Home</a> </li>
                    <li><a href="films.html">Films in DB</a> </li>
                    <li><a href="actors.html">Actors in DB</a> </li>
                    <li><a href="character-create">Create a character</a> </li>
                </ul>
            </nav>

            <h1>${film.title}</h1>
            <h4>
                <div id="genre_length">Genre: ${film.genre}, Movie Length: ${film.length} minutes</div>
                <div id="rating">Current Rating: ${film.userRating}</div>
                <div id="summary">Summary: ${film.summary}</div>
                <div id="director">${film.directorFullName}</div>
                <a href="${film.trailerUrl}">${film.title} Trailer</a>
                <!-- TODO: Check how to inbed it into site! -->
            </h4>
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

            <iframe src="http://www.youtube.com/embed/XGSy3_Czz8k?autoplay=1" height="250" width="250"></iframe>
            <iframe width="854" height="510" src="https://www.youtube.com/embed/8hYlB38asDY" frameborder="0" allowfullscreen></iframe>

        </div>

    </body>
</html>
