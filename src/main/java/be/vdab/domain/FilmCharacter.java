package be.vdab.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import javax.validation.Valid;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Created by Hyuberuto on 10/07/15.
 */

@Entity(name = "filmcharacter")
public class FilmCharacter {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @NotBlank
    @Size(min = 2, max = 40)
    private String charName;

    @Valid
    @ManyToMany(mappedBy = "filmCharacters")
    @JsonIgnore
    private List<Film> films = new ArrayList<>();

    @Valid
    @ManyToMany(mappedBy = "filmCharacters")
    @JsonIgnore
    private List<Actor> actors = new ArrayList<>();

    public FilmCharacter() {
    }

    public FilmCharacter(String charName) {
        this.charName = charName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCharName() {
        return charName;
    }

    public void setCharName(String charName) {
        this.charName = charName;
    }

    void addFilm(Film film) {
        films.add(film);
    }

    void addActor(Actor actor) {
        actors.add(actor);
    }

    public List<Film> getFilms() {
        return Collections.unmodifiableList(films);
    }


    public List<Actor> getActors() {
        return Collections.unmodifiableList(actors); //Zorgt dat deze nu Read only is! En krijgen mensen dus een stacktrace voor als ze hem toch probere gebruiken.
    }

}
