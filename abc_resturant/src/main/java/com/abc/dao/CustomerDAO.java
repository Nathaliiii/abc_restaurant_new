package com.abc.dao;

import com.abc.model.Customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CustomerDAO {

    private static final String INSERT_CUSTOMER_SQL = "INSERT INTO add_customers (name, email, contactNumber) VALUES (?, ?, ?)";

    public boolean addCustomer(Customer customer) {
        boolean rowInserted = false;

        try (Connection connection = DBConnector.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CUSTOMER_SQL)) {

            preparedStatement.setString(1, customer.getName());
            preparedStatement.setString(2, customer.getEmail());
            preparedStatement.setString(3, customer.getContactNumber());

            rowInserted = preparedStatement.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rowInserted;
    }
}
