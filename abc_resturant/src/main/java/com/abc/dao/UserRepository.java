package com.abc.dao;

import com.abc.model.AppUser;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserRepository {

    public boolean addUser(AppUser user) throws SQLException {
        String sql = "INSERT INTO add_users (username, password, role) VALUES (?, ?, ?)";
        try (Connection connection = DBConnector.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, user.getUsername());
            statement.setString(2, user.getPassword());
            statement.setString(3, user.getRole());
            int rowsInserted = statement.executeUpdate();
            return rowsInserted > 0;
        }
    }

    public boolean deleteUser(String username) throws SQLException {
        String sql = "DELETE FROM add_users WHERE username = ?";
        try (Connection connection = DBConnector.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, username);
            int rowsDeleted = statement.executeUpdate();
            return rowsDeleted > 0;
        }
    }

    public List<AppUser> getAllUsers() throws SQLException {
        List<AppUser> users = new ArrayList<>();
        String sql = "SELECT * FROM add_users";
        try (Connection connection = DBConnector.getConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(sql)) {
            while (resultSet.next()) {
                AppUser user = new AppUser();
                user.setUsername(resultSet.getString("username"));
                user.setPassword(resultSet.getString("password"));
                user.setRole(resultSet.getString("role"));
                users.add(user);
            }
        }
        return users;
    }
}
