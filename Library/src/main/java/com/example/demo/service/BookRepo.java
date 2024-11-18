package com.example.demo.service;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Book;
@Repository
public interface BookRepo extends JpaRepository<Book, Long> {
	List<Book> findByIdIn(List<Long> ids);
}
