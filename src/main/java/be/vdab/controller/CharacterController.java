package be.vdab.controller;

import be.vdab.domain.Actor;
import be.vdab.domain.Film;
import be.vdab.repository.ActorRepository;
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

    @ModelAttribute("films")
    public List<Film> films() {
        return filmRepository.findAll();
    }

    @ModelAttribute("actors")
    public List<Actor> actors() {
        return actorRepository.findAll();
    }

    @RequestMapping("/character/create")
    public String showForm(@ModelAttribute("form") CharacterForm form) {
        return "character-form";
    }

    @RequestMapping(value = "/character/create", method = RequestMethod.POST)
    public String create(CharacterForm form) {
        //TODO: complete this. All we need is already here: filmId, actorId and character name.
        return "redirect:/";
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