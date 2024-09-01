package com.abc.dao;

import com.abc.model.Order;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class OrderDAO {
    private static final String INSERT_SQL = "INSERT INTO orders (customer_name, contact_number, food_item, quantity, special_requests, payment_method) VALUES (?, ?, ?, ?, ?, ?)";

    public boolean addOrder(Order order) {
        try (Connection connection = DBConnector.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_SQL)) {

            // Print SQL and parameters for debugging
            System.out.println("Executing SQL: " + INSERT_SQL);
            System.out.println("Customer Name: " + order.getCustomerName());
            System.out.println("Contact Number: " + order.getContactNumber());
            System.out.println("Food Item: " + order.getFoodItem());
            System.out.println("Quantity: " + order.getQuantity());
            System.out.println("Special Requests: " + order.getSpecialRequests());
            System.out.println("Payment Method: " + order.getPaymentMethod());

            preparedStatement.setString(1, order.getCustomerName());
            preparedStatement.setString(2, order.getContactNumber());
            preparedStatement.setString(3, order.getFoodItem());
            preparedStatement.setInt(4, order.getQuantity());
            preparedStatement.setString(5, order.getSpecialRequests());
            preparedStatement.setString(6, order.getPaymentMethod());

            int rowsAffected = preparedStatement.executeUpdate();
            return rowsAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace(); // Check the server logs or console for error details
            return false;
        }
    }
}
