package com.sih.internshiprecommendation.dto;

import com.sih.internshiprecommendation.entity.Internship;
import java.util.List;

public class RecommendationResult {

    private Internship internship;
    private int score;
    private int maxScore;
    private boolean sectorMatched;
    private boolean locationMatched;
    private List<String> matchedSkills;

    public RecommendationResult(Internship internship, int score, int maxScore,
                                boolean sectorMatched, boolean locationMatched,
                                List<String> matchedSkills) {
        this.internship = internship;
        this.score = score;
        this.maxScore = maxScore;
        this.sectorMatched = sectorMatched;
        this.locationMatched = locationMatched;
        this.matchedSkills = matchedSkills;
    }

    public int getScorePercent() {
        if (maxScore == 0) return 0;
        return (int) Math.round((score * 100.0) / maxScore);
    }

    public String getMatchedSkillsDisplay() {
        if (matchedSkills == null || matchedSkills.isEmpty()) return "";
        return String.join(", ", matchedSkills);
    }

    public Internship getInternship() { return internship; }
    public int getScore() { return score; }
    public int getMaxScore() { return maxScore; }
    public boolean isSectorMatched() { return sectorMatched; }
    public boolean isLocationMatched() { return locationMatched; }
    public List<String> getMatchedSkills() { return matchedSkills; }
}