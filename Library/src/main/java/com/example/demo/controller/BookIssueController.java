//package com.example.demo.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import com.example.demo.dao.BookIssueDAO;
//import com.example.demo.model.Issue;
//
//import java.util.Date;
//
//@Controller
//public class BookIssueController {
//
//    @Autowired
//    private BookIssueDAO bookIssueDAO;
//
//    @RequestMapping("/issueBook")
//    public String issueBook(@RequestParam("memberId") Long memberId,
//                            @RequestParam("bookId") Long bookId) {
//        Issue issue = new Issue();
//        issue.setMemberId(memberId);
//        issue.setBookId(bookId);
//        issue.setIssueDate(new Date());
//        bookIssueDAO.issueBook(issue);
//        return "issue.jsp"; // Redirect to a relevant page
//    }
//}

package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Book;
import com.example.demo.model.User;
import com.example.demo.service.BookService;
import com.example.demo.service.UserService;

@Controller
public class BookIssueController {

    @Autowired
    private BookService bookService;

    @Autowired
    private UserService userService;

    @RequestMapping("/issueBook")
    public String issueBook(@RequestParam("bookId") Long bookId, @RequestParam("userId") Long userId) {
        Book book = bookService.getBookById(bookId);
        User user = userService.getUserById(userId);
        
        if (book != null && user != null) {
//            List<Long> issuedBookIds = user.getIssuedBookIds();
//            issuedBookIds.add(book.getId());
//            user.setIssuedBookIds(issuedBookIds);
        	
        	System.out.println("Before: " + user.getIssuedBookIds()+  userId);
        	user.getIssuedBookIds().add(bookId);
        	System.out.println("After: " + user.getIssuedBookIds() + userId);
            userService.saveUser(user);
        }

        return "redirect:/viewIssuedBooks";
    }
}
