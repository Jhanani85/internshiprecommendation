package com.sih.internshiprecommendation.service;

import com.sih.internshiprecommendation.dto.RecommendationResult;
import com.sih.internshiprecommendation.entity.Internship;
import com.sih.internshiprecommendation.entity.User;
import com.sih.internshiprecommendation.repository.InternshipRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Service
public class RecommendationService {

    @Autowired
    private InternshipRepository internshipRepository;

    private static final int SECTOR_MATCH_SCORE   = 5;
    private static final int SKILL_MATCH_SCORE    = 3;
    private static final int LOCATION_EXACT_SCORE = 2;
    private static final int LOCATION_REMOTE_SCORE = 1;
    private static final int MAX_RECOMMENDATIONS  = 5;

    public List<RecommendationResult> getTopRecommendations(User user) {

        List<Internship> candidates = internshipRepository.findAll();
        Set<String> userSkills = parseSkills(user.getSkills());

        int maxScore = SECTOR_MATCH_SCORE
                + (userSkills.size() * SKILL_MATCH_SCORE)
                + LOCATION_EXACT_SCORE;

        return candidates.stream()
                .map(i -> buildResult(i, user, userSkills, maxScore))
                .filter(r -> r.getScore() > 0)
                .sorted((a, b) -> b.getScore() - a.getScore())
                .limit(MAX_RECOMMENDATIONS)
                .collect(Collectors.toList());
    }

    private RecommendationResult buildResult(Internship internship, User user,
                                             Set<String> userSkills, int maxScore) {
        int score = 0;
        boolean sectorMatched = false;
        boolean locationMatched = false;
        List<String> matchedSkills = new ArrayList<>();

        if (internship.getSector() != null && user.getSector() != null
                && internship.getSector().equalsIgnoreCase(user.getSector())) {
            score += SECTOR_MATCH_SCORE;
            sectorMatched = true;
        }

        Set<String> internshipSkills = parseSkills(internship.getSkills());
        for (String skill : userSkills) {
            if (internshipSkills.contains(skill)) {
                score += SKILL_MATCH_SCORE;
                matchedSkills.add(capitalize(skill));
            }
        }

        if (internship.getLocation() != null && user.getLocation() != null) {
            if (internship.getLocation().equalsIgnoreCase(user.getLocation())) {
                score += LOCATION_EXACT_SCORE;
                locationMatched = true;
            } else if (internship.getLocation().equalsIgnoreCase("Remote")) {
                score += LOCATION_REMOTE_SCORE;
                locationMatched = true;
            }
        }

        return new RecommendationResult(
                internship, score, maxScore,
                sectorMatched, locationMatched, matchedSkills);
    }

    private Set<String> parseSkills(String csv) {
        if (csv == null || csv.isBlank()) return Collections.emptySet();
        return Arrays.stream(csv.split(","))
                .map(String::trim)
                .filter(s -> !s.isEmpty())
                .map(String::toLowerCase)
                .collect(Collectors.toSet());
    }

    private String capitalize(String s) {
        if (s == null || s.isEmpty()) return s;
        return Character.toUpperCase(s.charAt(0)) + s.substring(1);
    }
}