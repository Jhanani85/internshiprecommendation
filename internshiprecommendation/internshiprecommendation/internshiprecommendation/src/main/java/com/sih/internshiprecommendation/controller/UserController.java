package com.sih.internshiprecommendation.controller;

import com.sih.internshiprecommendation.entity.User;
import com.sih.internshiprecommendation.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @PostMapping("/register")
    public String registerUser(User user) {
        User saved = userRepository.save(user);
        return "redirect:/recommendations?userId=" + saved.getId();
    }
}