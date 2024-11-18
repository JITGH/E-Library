package com.example.demo.controller;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Admin;

import com.example.demo.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
@Controller
public class AdminController {
	 @Autowired
	 AdminService adminService;
	 @RequestMapping("/logout")
	    public String logout(HttpServletRequest request) {
	        HttpSession session = request.getSession(false);
	        if (session != null) {
	            session.invalidate(); // Invalidate the session
	        }
	        return "redirect:/index"; // Redirect to the login page
	    }
	 @RequestMapping("/adminr")
	   public String Adminregister()
	   {
	   	return "adminregister.jsp";
	   }
	@RequestMapping("/aregprocess")
	public String aregProcess(@RequestParam("name")String name,@RequestParam("email")String email,@RequestParam("password")String pass)
	{
		Admin u=new Admin();
		u.setName(name);
		u.setEmail(email);
		u.setPassword(pass);
		adminService.saveUser(u);
		return "addash";
	}
	
	@RequestMapping("/adminl")
	   public String Adminlogin()
	   {
	   	return "adminlogin.jsp";
	   }
	@RequestMapping("/aloginprocess")
	public String aloginProcess(@RequestParam("email") String email,
          @RequestParam("password") String password) {
     Admin admin = adminService.findByEmail(email);
     if (admin != null && admin.getPassword().equals(password)) {
           return "books"; // Redirect to home or dashboard after successful login
       } else {
            return "adminl?error=true"; // Redirect back to login with an error parameter
            }
     }
	
	//@RequestMapping("/members")
	
}
