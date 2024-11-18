package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.BookDAO;
import com.example.demo.model.Book;
import com.example.demo.model.User;

@Service
public class BookServiceImpl implements BookService {
	UserService userService;
    @Autowired
    private BookDAO bookDAO;
    
    @Autowired
    private BookRepo bookRepository;

    public List<Book> getIssuedBooks(Long userId) {
        User user = userService.getUserById(userId); // Retrieve the user
        List<Long> issuedBookIds = user.getIssuedBookIds(); // Get issued book IDs
        return bookRepository.findByIdIn(issuedBookIds); // Fetch books by IDs
    }

    @Override
    public List<Book> getAllBooks() {
        return bookDAO.getAllBooks();
    }

    @Override
    public void saveBook(Book book) {
        bookDAO.saveBook(book);
    }
    
    public void deleteBook(long id) {
    	bookDAO.deleteBook(id);
    }
    
    @Override
    public Book getBookById(long id) {
        return bookDAO.getBookById(id);
    }
    
    public List<Book> getBooksByIds(List<Long> ids) {
        return bookRepository.findByIdIn(ids);
    }

}
