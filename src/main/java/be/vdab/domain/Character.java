package be.vdab.domain;

import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import javax.validation.Valid;
import javax.validation.constraints.Size;
import java.util.List;

/**
 * Created by Hyuberuto on 10/07/15.
 */

@Entity
public class Character {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @NotBlank
    @Size(min = 2, max = 12)
    private String charName;

    @Valid
    @ManyToMany(mappedBy = "characters")
    private List<Film> films;

    @Valid
    @ManyToMany(mappedBy = "characters")
    private List<Actor> actors;

    public Character() {
    }

    public Character(String charName, List<Film> films, List<Actor> actors) {
        this.charName = charName;
        this.films = films;
        this.actors = actors;
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

    public List<Film> getFilms() {
        return films;
    }

    public void setFilms(List<Film> films) {
        this.films = films;
    }

    public List<Actor> getActors() {
        return actors;
    }

    public void setActors(List<Actor> actors) {
        this.actors = actors;
    }
}
