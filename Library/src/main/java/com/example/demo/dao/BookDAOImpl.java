package com.example.demo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.hibernate.boot.jaxb.JaxbLogger_.logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Book;

@Repository
public class BookDAOImpl implements BookDAO {

    @Autowired
    private DataSource dataSource;

    @Override
    public List<Book> getAllBooks() {
        String sql = "SELECT * FROM book";
        List<Book> books = new ArrayList<>();

        try (Connection conn = dataSource.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Book book = new Book();
                book.setId(rs.getLong("id"));
                book.setTitle(rs.getString("title"));
                book.setAuthor(rs.getString("author"));
                book.setYear(rs.getInt("year"));
                book.setDescription(rs.getString("description"));
                books.add(book);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }

        return books;
    }

    @Override
    public void saveBook(Book book) {
        String sql = "INSERT INTO book (title, author, year, description) VALUES (?, ?, ?, ?)";

        try (Connection conn = dataSource.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, book.getTitle());
            ps.setString(2, book.getAuthor());
            ps.setInt(3, book.getYear());
            ps.setString(4, book.getDescription());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    @Override
    public void deleteBook(long id) {
        String sql = "DELETE FROM book WHERE id = ?";

        try (Connection conn = dataSource.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setLong(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    @Override
    public Book getBookById(long id) {
        String sql = "SELECT * FROM book WHERE id = ?";
        Book book = null;

        try (Connection conn = dataSource.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setLong(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    book = new Book();
                    book.setId(rs.getLong("id"));
                    book.setTitle(rs.getString("title"));
                    book.setAuthor(rs.getString("author"));
                    book.setYear(rs.getInt("year"));
                    book.setDescription(rs.getString("description"));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return book;
    }

}
