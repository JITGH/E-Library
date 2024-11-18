package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Admin;
@Service
public class AdminService {
	 @Autowired
    AdminRepo adminRepo;

    public void saveUser(Admin admin) {
    	adminRepo.save(admin);
    }

    public Admin findByEmail(String email) {
        return adminRepo.findByEmail(email);
    }
}
