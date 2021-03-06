package be.vdab.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import javax.validation.Valid;
import javax.validation.constraints.*;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Hyuberuto on 10/07/15.
 */

@Entity
public class Film {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @NotBlank
    @Size(min = 2, max = 50)
    private String title;

    @NotNull
    private int length;

    @NotBlank
    @Size(min = 10, max = 500)
    @Column(length = 500)
    private String summary;

    @Lob
    @Basic(fetch = FetchType.LAZY)
    private byte[] coverImage;

    @NotNull
    @Enumerated(EnumType.STRING)
    private Genre genre;

    @NotBlank
    @Size(min = 2, max = 50)
    @Column(name = "director")
    private String directorFullName;

    @Min(1)
    @Max(10)
    @Column(name = "rating")
    private int userRating;

    private URL trailerUrl;

    @Valid
    @ManyToMany
    private List<FilmCharacter> filmCharacters = new ArrayList<>();

    @OneToMany
    private List<Comment> comments = new ArrayList<>();

    public Film() {
    }

    public Film(String title, int length, String summary, Genre genre, String directorFullName, int userRating, URL trailerUrl) {
        this.title = title;
        this.length = length;
        this.summary = summary;
        this.genre = genre;
        this.directorFullName = directorFullName;
        this.userRating = userRating;
        this.trailerUrl = trailerUrl;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public byte[] getCoverImage() {
        return coverImage;
    }

    public void setCoverImage(byte[] coverImage) {
        this.coverImage = coverImage;
    }

    public Genre getGenre() {
        return genre;
    }

    public void setGenre(Genre genre) {
        this.genre = genre;
    }

    public String getDirectorFullName() {
        return directorFullName;
    }

    public void setDirectorFullName(String directorFullName) {
        this.directorFullName = directorFullName;
    }

    public int getUserRating() {
        if (comments.isEmpty()){
            return userRating;
        }else {
            userRating=0;
            for (Comment c: comments){
                userRating += c.getRating();
            }
            userRating /= comments.size();
            return userRating;
        }
    }

    public void setUserRating(int userRating) {
        this.userRating = userRating;
    }

    public URL getTrailerUrl() {
        return trailerUrl;
    }

    public void setTrailerUrl(URL trailerUrl) {
        this.trailerUrl = trailerUrl;
    }

    public List<FilmCharacter> getFilmCharacters() {
        return filmCharacters;
    }

    public void setFilmCharacters(List<FilmCharacter> filmCharacters) {
        this.filmCharacters = filmCharacters;
    }

    public void addToCharacters(FilmCharacter character) {
        this.filmCharacters.add(character);
        character.addFilm(this);
    }

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }
}
