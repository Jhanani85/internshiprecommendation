package com.sih.internshiprecommendation.repository;

import com.sih.internshiprecommendation.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {
    @Query("SELECT u FROM User u WHERE u.email = :email ORDER BY u.id DESC LIMIT 1")
    Optional<User> findByEmail(@Param("email") String email);
}