package be.vdab.controller;

import be.vdab.domain.Comment;
import be.vdab.domain.Film;
import be.vdab.domain.Genre;
import be.vdab.repository.CommentRepository;
import be.vdab.repository.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
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
public class FilmController {

    @Autowired
    FilmRepository filmRepository;

    @Autowired
    CommentRepository commentRepository;

    @RequestMapping("film.html")
    public Film film(@RequestParam("id") int id) {
        return filmRepository.findOne(id);
    }


    @RequestMapping("/films.html")
    public String films(Map<String, Object> model){
        model.put("films", filmRepository.findAll());
        return "films";
    }

    @RequestMapping("film-form.html")
    public String form(Map<String, Object> model, @RequestParam(value = "id",required = false) Integer filmId){
        if (filmId == null){
            model.put("film", new Film());

        } else {
            model.put("film", filmRepository.findOne(filmId));
        }
        return "film-form";
    }

    @RequestMapping(value = "/create-film", method = RequestMethod.POST)
    public String create(@Valid Film film, BindingResult bindingResult){
        if (bindingResult.hasErrors()){
            return "film-form";
        } else{
            filmRepository.save(film);
            return "redirect:/films.html";
        }
    }

    @RequestMapping(value = "/remove-film", method = RequestMethod.GET)
    public String remove(@RequestParam(value = "id") Integer filmId){
        filmRepository.delete(filmId);
        return "redirect:/films.html";
    }



    @ModelAttribute(value = "genres")
    public List<Genre> genres(){
        List<Genre> genres = new ArrayList<>();
        for (Genre g: Genre.values()){
            genres.add(g);
        }
        return genres;
    }

    @ModelAttribute(value = "comments")
    public List<Comment> comments(){
        return commentRepository.findAll();
    }

    @ModelAttribute(value = "numbers")
    public List<Integer> numbers(){
        List<Integer> numbers = new ArrayList<>();
        Integer i;
        for (i = 1; i <= 10; i++){
            numbers.add(i);
        }
        return numbers;
    }

}
