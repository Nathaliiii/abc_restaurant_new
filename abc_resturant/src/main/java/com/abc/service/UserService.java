package com.abc.service;

import com.abc.dao.UserDAO;

public class UserService {
    private UserDAO userDAO = new UserDAO();

    public boolean registerUser(String name, String email, String contactNumber, String password) {
        // Add validation logic here if needed
        return userDAO.saveUser(name, email, contactNumber, password);
    }
}
