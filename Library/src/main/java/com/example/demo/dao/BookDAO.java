package com.example.demo.dao;

import java.util.List;
import com.example.demo.model.Book;

public interface BookDAO {
    List<Book> getAllBooks();
    void saveBook(Book book);
    void deleteBook(long id);
    // Other CRUD methods can be added here
    Book getBookById(long id);
}
