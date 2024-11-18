



package com.example.demo.model;

import jakarta.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String email;
    private String password;

    @ElementCollection
    private List<Long> issuedBookIds = new ArrayList<>();

    // Getters and setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<Long> getIssuedBookIds() {
        return this.issuedBookIds;
    }

    public void setIssuedBookIds(List<Long> issuedBookIds) {
        this.issuedBookIds = issuedBookIds;
        System.out.println("----------------------------------");
        System.out.println(issuedBookIds);
        System.out.println("----------------------------------");
    }
    
    public void addIssuedBookId(Long bookId) {
        this.issuedBookIds.add(bookId);
    }
}
