package com.sih.internshiprecommendation.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "internships")
public class Internship {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;
    private String company;
    private String location;
    private String sector;
    private String duration;
    private String stipend;
    private String skills; // comma-separated, e.g. "Java,SQL,Cloud"

    public Internship() {
    }

    public String getSkills() {
        return skills;
    }

    public void setSkills(String skills) {
        this.skills = skills;
    }

    public Long getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getCompany() {
        return company;
    }

    public String getLocation() {
        return location;
    }

    public String getSector() {
        return sector;
    }

    public String getDuration() {
        return duration;
    }

    public String getStipend() {
        return stipend;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public void setSector(String sector) {
        this.sector = sector;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public void setStipend(String stipend) {
        this.stipend = stipend;
    }
}