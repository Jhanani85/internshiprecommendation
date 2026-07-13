package com.sih.internshiprecommendation.controller;

import com.sih.internshiprecommendation.dto.RecommendationResult;
import com.sih.internshiprecommendation.entity.User;
import com.sih.internshiprecommendation.repository.InternshipRepository;
import com.sih.internshiprecommendation.repository.UserRepository;
import com.sih.internshiprecommendation.service.RecommendationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Controller
public class InternshipController {

    @Autowired
    private InternshipRepository internshipRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RecommendationService recommendationService;

    @GetMapping("/recommendations")
    public String recommendations(@RequestParam Long userId, Model model) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new RuntimeException("User not found"));
        List<RecommendationResult> results =
                recommendationService.getTopRecommendations(user);
        model.addAttribute("results", results);
        model.addAttribute("user", user);
        return "result";
    }

    @GetMapping("/apply")
    public String apply(
            @RequestParam(required = false) String title,
            @RequestParam(required = false) String company,
            Model model) {
        model.addAttribute("internshipTitle", title);
        model.addAttribute("internshipCompany", company);
        return "apply";
    }

    @PostMapping("/submitApplication")
    public String submitApplication(
            @RequestParam(required = false) String name,
            @RequestParam(required = false) String email,
            @RequestParam(required = false) String college,
            @RequestParam(value = "resume", required = false) MultipartFile resume,
            Model model) {
        model.addAttribute("name", name);
        model.addAttribute("email", email);
        model.addAttribute("college", college);
        return "success";
    }
}