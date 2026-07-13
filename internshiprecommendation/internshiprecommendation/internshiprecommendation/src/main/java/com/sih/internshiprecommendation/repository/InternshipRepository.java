package com.sih.internshiprecommendation.repository;

import com.sih.internshiprecommendation.entity.Internship;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface InternshipRepository
        extends JpaRepository<Internship, Long> {

    List<Internship> findBySector(String sector);
}