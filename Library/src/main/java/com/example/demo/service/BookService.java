//package com.example.demo.service;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import com.example.demo.model.Book;
//@Service
//public class BookService {
//
//    @Autowired
//    private BookRepo bookRepo;
//
//    public void saveBook(Book book) {
//        bookRepo.save(book);
//    }
//    
//    public List<Book> getAllBooks() {
//        return bookRepo.findAll();
//    }
//}
//
package com.example.demo.service;

import java.util.List;
import com.example.demo.model.Book;

public interface BookService {
    List<Book> getAllBooks();
    void saveBook(Book book);
    // Other CRUD methods can be added here
    void deleteBook(long id);
    Book getBookById(long id);
    public List<Book> getBooksByIds(List<Long> ids);
}
