package com.abc.dao;

import com.abc.model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserDAO {
    private static final String INSERT_USER_SQL = "INSERT INTO users (name, email, contactnumber, password) VALUES (?, ?, ?, ?)";

    public boolean saveUser(String name, String email, String contactNumber, String password) {
        try (Connection connection = DBConnector.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER_SQL)) {
             
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, contactNumber);
            preparedStatement.setString(4, password);
            int result = preparedStatement.executeUpdate();
            
            return result > 0;
        } catch (SQLException e) {
            e.printStackTrace(); // Print stack trace for debugging
            return false;
        }
    }
}
