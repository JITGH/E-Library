//package com.example.demo.dao;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.SQLException;
//
//import javax.sql.DataSource;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Repository;
//
//import com.example.demo.model.Issue;
//
//@Repository
//public class BookIssueDAOImpl implements BookIssueDAO {
//
//    @Autowired
//    private DataSource dataSource;
//    @Override
//    public void issueBook(Issue issue) {
//        String sql = "INSERT INTO issue (member_id, book_id, issue_date, return_date) VALUES (?, ?, ?, ?)";
//
//        try (Connection conn = dataSource.getConnection();
//             PreparedStatement ps = conn.prepareStatement(sql)) {
//
//            ps.setLong(1, issue.getMemberId());
//            ps.setLong(2, issue.getBookId());
//            ps.setDate(3, new java.sql.Date(issue.getIssueDate().getTime()));
//            ps.setDate(4, issue.getReturnDate() != null ? new java.sql.Date(issue.getReturnDate().getTime()) : null);
//            ps.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
//    @Override
//    public void returnBook(Long issueId) {
//        String sql = "DELETE FROM issue WHERE id = ?";
//
//        try (Connection conn = dataSource.getConnection();
//             PreparedStatement ps = conn.prepareStatement(sql)) {
//
//            ps.setLong(1, issueId);
//            ps.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//}
