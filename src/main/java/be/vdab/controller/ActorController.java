package be.vdab.controller;

import be.vdab.domain.Actor;
import be.vdab.domain.Film;
import be.vdab.domain.Gender;
import be.vdab.domain.Genre;
import be.vdab.repository.ActorRepository;
import be.vdab.repository.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.ArrayList;
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

    @RequestMapping("actor-form.html")
    public String form(Map<String, Object> model, @RequestParam(value = "id",required = false) Integer actorId){
        if (actorId == null){
            model.put("actor", new Actor());

        } else {
            model.put("actor", actorRepository.findOne(actorId));
        }
        return "actor-form";
    }

    @RequestMapping(value = "/create-actor", method = RequestMethod.POST) //TODO:fix the value problem!
    public String create(@Valid Actor actor, BindingResult bindingResult){
        if (bindingResult.hasErrors()){
            return "actor-form";
        }else{
            actorRepository.save(actor);
            return "redirect:/actors.html";
        }
    }

    public List<Gender> genders(){
        List<Gender> genders = new ArrayList<>();
        for (Gender g: Gender.values()){
            genders.add(g);
        }
        return genders;
    }

}