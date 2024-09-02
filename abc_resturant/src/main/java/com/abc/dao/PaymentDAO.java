package com.abc.dao;

import com.abc.model.Payment;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PaymentDAO {
    
    public void addPayment(Payment payment) throws SQLException {
        String query = "INSERT INTO Payments (reservationId, amount, paymentMethod) VALUES (?, ?, ?)";
        try (Connection conn = DBConnector.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, payment.getReservationId());
            stmt.setBigDecimal(2, payment.getAmount());
            stmt.setString(3, payment.getPaymentMethod());

            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new SQLException("Error while adding payment to the database", e);
        }
    }
}
