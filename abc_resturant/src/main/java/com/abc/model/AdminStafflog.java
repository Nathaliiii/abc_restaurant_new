package com.abc.model;

public class AdminStafflog {
    private String username;
    private String password;

    // Default constructor
    public AdminStafflog() {
        // Default constructor
    }

    // Parameterized constructor (optional)
    public AdminStafflog(String username, String password) {
        this.username = username;
        this.password = password;
    }

    // Getters and setters
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
