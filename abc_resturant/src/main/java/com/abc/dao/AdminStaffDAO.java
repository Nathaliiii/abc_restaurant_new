package com.abc.dao;

import com.abc.model.AdminStafflog;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminStaffDAO {
    private Connection connection;

    public AdminStaffDAO() {
        try {
            connection = DBConnector.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle connection error, maybe rethrow or handle accordingly
        }
    }

    public AdminStafflog getUserByUsername(String username, String role) {
        AdminStafflog user = null;
        String query = "SELECT * FROM " + (role.equals("admin") ? "admins" : "staff") + " WHERE username = ?";

        try (PreparedStatement pst = connection.prepareStatement(query)) {
            pst.setString(1, username);
            try (ResultSet rs = pst.executeQuery()) {
                if (rs.next()) {
                    user = new AdminStafflog();
                    user.setUsername(rs.getString("username"));
                    user.setPassword(rs.getString("password"));
                    // Set other fields as needed
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle SQL error
        }
        return user;
    }
}
