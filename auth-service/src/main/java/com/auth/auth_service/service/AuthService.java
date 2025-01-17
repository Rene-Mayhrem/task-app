package com.auth.auth_service.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.auth.auth_service.model.User;
import com.auth.auth_service.repository.UserRepository;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

@Service
public class AuthService {
  @Autowired
  private UserRepository repository;

  @Autowired
  private BCryptPasswordEncoder passwordEncoder;

  private final String SECRET_KEY = "SeCrEt";

  public User register (User user) {
    user.setPassword(passwordEncoder.encode(user.getPassword()));
    return repository.save(user);
  }

  public String login (User user) {
    User existingUser = repository.findByUsername(user.getUsername());
    if (existingUser != null && passwordEncoder.matches(user.getPassword(), user.getPassword())) {
      return generateToken(existingUser);
    }
    throw new RuntimeException("Invalid credentials");
  }

  private String generateToken (User user) {
    return Jwts.builder()
      .setSubject(user.getUsername())
      .setIssuedAt(new Date())
      .setExpiration(new Date(System.currentTimeMillis() + 86400000)) //? 1 day expiration
      .signWith(SignatureAlgorithm.HS512, SECRET_KEY)
      .compact();
  }

}
