package com.sih.internshiprecommendation.controller;

import com.sih.internshiprecommendation.entity.User;
import com.sih.internshiprecommendation.repository.UserRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.util.Optional;

@Controller
public class AuthController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/login")
    public String loginPage(HttpSession session) {
        if (session.getAttribute("loggedIn") != null) return "redirect:/";
        return "login";
    }

    @PostMapping("/signup")
    public String signup(@RequestParam String name,
                         @RequestParam String email,
                         @RequestParam String password,
                         HttpSession session, Model model) {

        if (userRepository.findByEmail(email).isPresent()) {
            model.addAttribute("signupError", "Email already registered. Please login.");
            model.addAttribute("activeTab", "signup");
            return "login";
        }

        User user = new User();
        user.setName(name);
        user.setEmail(email);
        user.setPassword(password);
        userRepository.save(user);

        model.addAttribute("signupSuccess", "✅ Account created! Please sign in.");
        model.addAttribute("activeTab", "login");
        return "login";
    }

    @PostMapping("/login")
    public String login(@RequestParam String email,
                        @RequestParam String password,
                        HttpSession session, Model model) {
        Optional<User> found = userRepository.findByEmail(email);
        if (found.isPresent()
                && found.get().getPassword() != null
                && found.get().getPassword().equals(password)) {
            session.setAttribute("loggedIn", true);
            session.setAttribute("loggedInName", found.get().getName());
            session.setAttribute("loggedInEmail", email);
            return "redirect:/";
        }
        model.addAttribute("loginError", "Invalid email or password.");
        model.addAttribute("activeTab", "login");
        return "login";
    }


    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }
}