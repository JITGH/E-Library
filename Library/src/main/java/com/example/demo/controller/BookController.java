//package com.example.demo.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.multipart.MultipartFile;
//
//import com.example.demo.model.Book;
//import com.example.demo.service.BookService;
//
//import org.springframework.ui.Model;
//
//
//
//
//@Controller
//public class BookController {
//
//    @Autowired
//   BookService bookService;
//
//    @RequestMapping("/book")
//	   public String Addbook()
//	   {
//	   	return "addbook.jsp";
//	   }
//    
//    
//    @GetMapping("/books")
//    public String viewBooks(Model model) {
//        model.addAttribute("books", bookService.getAllBooks());
//        
//        return "addashboard"; // Ensure you have this JSP file
//    }
//
//    @RequestMapping("/addbookprocess")
//	public String aregProcess(@RequestParam("title")String title,@RequestParam("author")String author,@RequestParam("year") int year,@RequestParam("description")String description)
//	{
//		
//		 Book newBook = new Book();
//	        newBook.setTitle(title);
//	        newBook.setAuthor(author);
//	        newBook.setYear(year);
//	        newBook.setDescription(description);
//
//	        
//	        bookService.saveBook(newBook); 
//		return "redirect:/addash";
//	}
//}
//
package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import jakarta.servlet.http.HttpSession;

import com.example.demo.model.Book;
import com.example.demo.service.BookService;

@Controller
public class BookController {

    @Autowired
    private BookService bookService;

    
    @RequestMapping("/book")
	   public String Addbook()
	   {
	   	return "addbook.jsp";
	   }
    @RequestMapping("/books")
    public String viewBooks(Model model) {
        List<Book> books = bookService.getAllBooks();
        model.addAttribute("books", books);
        System.out.println("Books fetched: " + books);
        return "addashboard.jsp"; // Ensure you have this JSP file
    }
    
    @RequestMapping("/booksUser")
    public String viewBooksUser(Model model,HttpSession session) {
        List<Book> books = bookService.getAllBooks();
        Long userId = (Long) session.getAttribute("userId");
        model.addAttribute("books", books);
        model.addAttribute("userId",userId);
        System.out.println("Books fetched: " + books);
        return "usdashboard.jsp"; // Ensure you have this JSP file
    }
    
    @RequestMapping("/issueBooksUser")
    public String issueBooksUser(Model model) {
        List<Book> books = bookService.getAllBooks();
        model.addAttribute("books", books);
        System.out.println("Books fetched: " + books);
        return "issue.jsp"; // Ensure you have this JSP file
    }
    
    
    @PostMapping("/deleteBook")
    public String deleteBook(@RequestParam("id") long id, Model model) {
        bookService.deleteBook(id);
        List<Book> books = bookService.getAllBooks();
        model.addAttribute("books", books);
        return "books";
    }

    @RequestMapping("/addbookprocess")
    public String aregProcess(@RequestParam("title") String title,
                              @RequestParam("author") String author,
                              @RequestParam("year") int year,
                              @RequestParam("description") String description) {

        Book newBook = new Book();
        newBook.setTitle(title);
        newBook.setAuthor(author);
        newBook.setYear(year);
        newBook.setDescription(description);
        System.out.println("hijfdhkujhkjfdhjkhfkj");
        bookService.saveBook(newBook);
        return "redirect:/addash";
    }
}
