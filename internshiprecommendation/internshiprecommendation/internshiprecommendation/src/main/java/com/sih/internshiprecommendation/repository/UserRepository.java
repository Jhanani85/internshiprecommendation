package com.sih.internshiprecommendation.repository;

import com.sih.internshiprecommendation.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {

    @Query(value = "SELECT * FROM users WHERE email = :email ORDER BY id DESC LIMIT 1", nativeQuery = true)
    Optional<User> findByEmail(@Param("email") String email);
}