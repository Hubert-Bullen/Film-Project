package be.vdab.service;

import be.vdab.domain.Film;
import be.vdab.repository.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

/**
 * Created by Hyuberuto on 10/07/15.
 */
@RestController
public class FilmService {

    @Autowired
    private FilmRepository filmRepository;

    @RequestMapping(value = "/films", method = GET, produces = "application/json")
    public List<String> findAllActors() {
        List<Film> films = filmRepository.findAll();
        List<String> actorNames = new ArrayList<>();
        for (Film f : films){
            actorNames.add(f.getTitle());
        }
        return actorNames;
    }

    @RequestMapping(value = "/films/{filmId}")
    public Film findById(@PathVariable("filmId") int id){
        return filmRepository.findOne(id);
    }

}
