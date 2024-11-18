package com.example.demo.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.model.Book;
import com.example.demo.service.BookService;
import org.springframework.ui.Model;

@Controller
public class HomeController {
	
	private BookService bookService;
	private Model model;
	@RequestMapping("/index")
   public String index()
   {
 	return "index.jsp";
   }
	
	
	
	
	@RequestMapping("/about")
	   public String about()
	   {
	   	return "about.jsp";
	   }
	@RequestMapping("/contact")
	   public String contact()
	   {
	   	return "contact.jsp";
	   }
	
	@RequestMapping("/addash")
	   public String addashboard()
	   {
		
	   	return "books";
	   }
	

	@RequestMapping("/usdash")
	   public String usdashboard()
	   {
	   	return "redirect:/viewIssuedBooks";
	   }
	
	@RequestMapping("/uspro")
	   public String uprofile()
	   {
	   	return "uprofile.jsp";
	   }
}
