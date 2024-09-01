package com.abc.service;

import com.abc.dao.UserRepository;
import com.abc.model.AppUser;
import java.sql.SQLException;
import java.util.List;

public class UserManagementService {

    private UserRepository userRepository;

    public UserManagementService() {
        userRepository = new UserRepository();
    }

    public boolean addUser(AppUser user) throws SQLException {
        return userRepository.addUser(user);
    }

    public boolean deleteUser(String username) throws SQLException {
        return userRepository.deleteUser(username);
    }

    public List<AppUser> getAllUsers() throws SQLException {
        return userRepository.getAllUsers();
    }

    // Other service methods as needed
}
