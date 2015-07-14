package be.vdab.controller;

import be.vdab.domain.Actor;
import be.vdab.domain.Film;
import be.vdab.domain.FilmCharacter;
import be.vdab.repository.ActorRepository;
import be.vdab.repository.CharacterRepository;
import be.vdab.repository.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
import java.util.Map;

@Controller
public class CharacterController {
    @Autowired
    private ActorRepository actorRepository;

    @Autowired
    private FilmRepository filmRepository;

    @Autowired
    private CharacterRepository characterRepository;

    @ModelAttribute("films")
    public List<Film> films() {
        return filmRepository.findAll();
    }

    @ModelAttribute("actors")
    public List<Actor> actors() {
        return actorRepository.findAll();
    }

    @RequestMapping("/character-create")
    public String showForm(@ModelAttribute("form") CharacterForm form) {
        return "character-form";
    }

    @RequestMapping(value = "/character-create", method = RequestMethod.POST)
    public String create(CharacterForm form) {
        Film film = filmRepository.findOne(form.getFilmId());
        Actor actor = actorRepository.findOne(form.getActorId());

        FilmCharacter fc = new FilmCharacter(form.getCharacterName());
        film.addToCharacters(fc);
        actor.addToCharacters(fc);

        characterRepository.save(fc);
        filmRepository.save(film);
        actorRepository.save(actor);



        //TODO: complete this. All we need is already here: filmId, actorId and character name.
        return "redirect:/films.html?id=" + film.getId();
    }
}

class CharacterForm {
    private int actorId;
    private int filmId;
    private String characterName;

    public int getActorId() {
        return actorId;
    }

    public void setActorId(int actorId) {
        this.actorId = actorId;
    }

    public int getFilmId() {
        return filmId;
    }

    public void setFilmId(int filmId) {
        this.filmId = filmId;
    }

    public String getCharacterName() {
        return characterName;
    }

    public void setCharacterName(String characterName) {
        this.characterName = characterName;
    }
}