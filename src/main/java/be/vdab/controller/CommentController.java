package be.vdab.controller;

import be.vdab.domain.Comment;
import be.vdab.domain.Film;
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
 * Created by Hyuberuto on 15/07/15.
 */
@Controller
public class CommentController {

    @Autowired
    CommentRepository commentRepository;

    @Autowired
    FilmRepository filmRepository;

/*    @RequestMapping("/actors.html")
    public String actors(Map<String, Object> model){
        model.put("actors", commentRepository.findAll());
        return "actors";
    }*/

    @RequestMapping("comment-form.html")
    public String form(Map<String, Object> model, @RequestParam(value = "filmId") Integer filmId){
        model.put("comment", new Comment());
        //filmRepository.findOne(filmId).getComments().add(comment);
        return "comment-form";
    }

    @RequestMapping(value = "/create-comment", method = RequestMethod.POST)
    public String create(@Valid Comment comment, BindingResult bindingResult, @RequestParam(value="filmId") Integer filmId){
        if (bindingResult.hasErrors()){
            return "comment-form";
        }else{
            commentRepository.save(comment);
            Film film = filmRepository.findOne(filmId);
            film.getComments().add(comment);
            filmRepository.saveAndFlush(film);
            return "redirect:/films.html";
        }
    }

    @RequestMapping(value = "/remove-comment", method = RequestMethod.GET)
    public String remove(@RequestParam(value = "id") Integer commentId){
        commentRepository.delete(commentId);
        return "redirect:/films.html";
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
