package com.abc.dao;

import com.abc.model.ContactUs;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ContactUsDAO {
    private static final String INSERT_CONTACT_US_SQL = "INSERT INTO contact_us (name, email, message) VALUES (?, ?, ?)";
    private static final String SELECT_CONTACT_US_BY_ID_SQL = "SELECT * FROM contact_us WHERE id = ?";

    public void insertContactUs(ContactUs contactUs) throws SQLException {
        try (Connection connection = DBConnector.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CONTACT_US_SQL)) {
            preparedStatement.setString(1, contactUs.getName());
            preparedStatement.setString(2, contactUs.getEmail());
            preparedStatement.setString(3, contactUs.getMessage());
            preparedStatement.executeUpdate();
        }
    }

    public ContactUs getContactUsById(int id) throws SQLException {
        ContactUs contactUs = null;
        try (Connection connection = DBConnector.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CONTACT_US_BY_ID_SQL)) {
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                contactUs = new ContactUs(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("message")
                );
            }
        }
        return contactUs;
    }
}
