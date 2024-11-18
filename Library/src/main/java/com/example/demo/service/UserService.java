package com.example.demo.service;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.UserDAO;
import com.example.demo.model.Book;
import com.example.demo.model.User;

@Service
public class UserService {
	@Autowired
    private BookService bookService;
    @Autowired
     UserRepo userRepo;
    @Autowired
    UserDAO userDAO;

    public void saveUser(User user) {
        userRepo.save(user);
    }

    public User findByEmail(String email) {
        return userRepo.findByEmail(email);
    }
    
    public List<User> getAllUsers() {
        return userDAO.getAllUsers();
    }
    public void deleteUser(Long userId) {
        userDAO.deleteUser(userId);
    }
    
    public User getUserById(Long id) {
        return userDAO.getUserById(id);
    }
    
    public User findById(Long id) {
        return userRepo.findById(id).orElse(null);
    }
    
    public List<Book> getIssuedBooks(Long userId) {
        User user = findById(userId);
        if (user == null) {
            return Collections.emptyList(); // or handle error as needed
        }
        List<Long> issuedBookIds = user.getIssuedBookIds();
        return bookService.getBooksByIds(issuedBookIds);
    }
}
