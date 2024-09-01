package com.abc.service;

import com.abc.dao.UserDAO;

public class UserService {
    private UserDAO userDAO;

    // Default constructor
    public UserService() {
        this.userDAO = new UserDAO();
    }

    // Setter for UserDAO, so it can be replaced in tests
    protected void setUserDAO(UserDAO userDAO) {
        this.userDAO = userDAO;
    }

    public boolean registerUser(String name, String email, String contactNumber, String password) {
        return userDAO.saveUser(name, email, contactNumber, password);
    }
}
