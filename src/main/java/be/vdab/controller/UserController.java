package be.vdab.controller;

import be.vdab.domain.User;
import be.vdab.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.Map;

/**
 * Created by Hyuberuto on 15/07/15.
 */
@Controller
public class UserController {

    @Autowired
    UserRepository userRepository;

    @RequestMapping("user-form.html")
    public String form(Map<String, Object> model, @RequestParam(value = "id",required = false) Integer userId){
        if (userId == null){
            model.put("user", new User());

        } else {
            model.put("user", userRepository.findOne(userId));
        }
        return "user-form";
    }


    @RequestMapping(value = "/create-user", method = RequestMethod.POST)
    public String create(@Valid User user, BindingResult bindingResult){
        if (bindingResult.hasErrors()){
            return "user-form";
        }else{
            userRepository.save(user);
            return "redirect:/";
        }
    }
}
