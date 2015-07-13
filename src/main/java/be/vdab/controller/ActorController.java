package be.vdab.controller;

import be.vdab.domain.Actor;
import be.vdab.domain.Film;
import be.vdab.repository.ActorRepository;
import be.vdab.repository.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

/**
 * Created by Hyuberuto on 13/07/15.
 */

@Controller
public class ActorController {

    @Autowired
    ActorRepository actorRepository;

    @RequestMapping("actor.html")
    public Actor actor(@RequestParam("id") int id) {
        return actorRepository.findOne(id);
    }


    @RequestMapping("/actors.html")
    public String actors(Map<String, Object> model){
        model.put("actors", actorRepository.findAll());
        return "actors";
    }

}