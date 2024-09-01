package com.abc.dao;

import com.abc.model.CartItem;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CartDAO {
    private Connection connection;

    public CartDAO() {
        try {
            // Initialize connection (use DBConnector)
            this.connection = DBConnector.getConnection();
        } catch (SQLException e) {
            e.printStackTrace(); // Use a logging framework for better practices
            throw new RuntimeException("Failed to connect to the database", e);
        }
    }

    public boolean addToCart(CartItem cartItem) {
        String sql = "INSERT INTO cart (item_name, quantity) VALUES (?, ?)";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, cartItem.getItemName());
            stmt.setInt(2, cartItem.getQuantity());
            int rows = stmt.executeUpdate();
            return rows > 0;
        } catch (SQLException e) {
            e.printStackTrace(); // Use a logging framework for better practices
            return false;
        } finally {
            DBConnector.closeConnection(connection);
        }
    }
}
