package be.vdab.service;

import be.vdab.domain.Actor;
import be.vdab.repository.ActorRepository;
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
public class ActorService {

    @Autowired
    private ActorRepository actorRepository;

    @RequestMapping(value = "/actors", method = GET, produces = "application/json")
    public List<String> findAllActors() {
        List<Actor> actors = actorRepository.findAll();
        List<String> actorNames = new ArrayList<>();
        for (Actor a : actors){
            actorNames.add(a.getFullName());
        }
        return actorNames;
    }

    @RequestMapping(value = "/actors/{actorId}")
    public Actor findActorById(@PathVariable("actorId") int id){
        return actorRepository.findOne(id);
    }

}