package com.example.demo.dao;

import java.util.List;
import com.example.demo.model.User;

public interface UserDAO {
    List<User> getAllUsers();
    void deleteUser(Long userId);
    User getUserById(Long id);
}
