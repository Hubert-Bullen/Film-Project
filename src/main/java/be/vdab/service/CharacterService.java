package be.vdab.service;

import be.vdab.domain.FilmCharacter;
import be.vdab.repository.CharacterRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

/**
 * Created by Hyuberuto on 13/07/15.
 */
@RestController
public class CharacterService {

    @Autowired
    private CharacterRepository characterRepository;

    @RequestMapping(value = "/characters", method = GET, produces = "application/json")
    public List<String> findAllActors() {
        List<FilmCharacter> characters = characterRepository.findAll();
        List<String> actorNames = new ArrayList<>();
        for (FilmCharacter c: characters){
            actorNames.add(c.getCharName());
        }
        return actorNames;
    }

    @RequestMapping(value = "/characters/{characterId}")
    public FilmCharacter findActorById(@PathVariable("characterId") int id){
        return characterRepository.findOne(id);
    }

}
