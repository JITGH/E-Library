package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.example.demo.service.UserService;

import jakarta.servlet.http.HttpSession;

import com.example.demo.model.Book;
import com.example.demo.model.User;
import org.springframework.ui.Model;
@Controller
public class UserController {
	 @Autowired
	
	  UserService userService;
	 
	@RequestMapping("/register")
	   public String Register()
	   {
	   	return "registration.jsp";
	   }
	
	@RequestMapping("/regprocess")
	public String regProcess(@RequestParam("name")String name,@RequestParam("email")String email,@RequestParam("password")String pass)
	{
		User u=new User();
		u.setName(name);
		u.setEmail(email);
		u.setPassword(pass);
		userService.saveUser(u);
		return "usdash";
	}
	
	@RequestMapping("/login")
	   public String login(@RequestParam(value = "error", required = false) String error, Model model) {
	        if ("true".equals(error)) {
	            model.addAttribute("errorMessage", "Invalid email or password.");
	        }
		
	   	return "login.jsp";
	   }
	@RequestMapping("/loginprocess")
	public String loginProcess(@RequestParam("email") String email,
            @RequestParam("password") String password,HttpSession session) {
       User user = userService.findByEmail(email);
       if (user != null && user.getPassword().equals(password)) {
    	   session.setAttribute("userId", user.getId());
             return "/viewIssuedBooks"; // Redirect to home or dashboard after successful login
         } else {
              return "login?error=true"; // Redirect back to login with an error parameter
              }
       }
	
	
	@RequestMapping("/viewIssuedBooks")
	public String viewIssuedBooks(Model model, HttpSession session) {
	    Long userId = (Long) session.getAttribute("userId"); // Retrieve user ID from session
	    List<Book> issuedBooks = userService.getIssuedBooks(userId); // Fetch issued books
	    model.addAttribute("issuedBooks", issuedBooks); // Add to model
	    return "usdashboard.jsp"; // Return view name
	}

	
	@RequestMapping("/issueBookSection")
	   public String showIssuBook()
	   {
	   	return "issueBooksUser";
	   }
	
	@RequestMapping("/users")
    public String showUsers(Model model) {
        List<User> users = userService.getAllUsers();
        model.addAttribute("users", users);
        return "member.jsp"; 
    }
	
	@RequestMapping("/deleteUser")
    public String deleteUser(@RequestParam Long userId) {
        userService.deleteUser(userId);
        return "redirect:/users";
    }
	
	
}
