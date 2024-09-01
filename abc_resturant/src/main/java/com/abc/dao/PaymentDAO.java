package com.abc.dao;

import com.abc.model.Payment;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PaymentDAO {

    public void addPayment(Payment payment) throws SQLException {
        String query = "INSERT INTO Payments (reservationId, amount, paymentMethod) VALUES (?, ?, ?)";
        Connection connection = null;
        PreparedStatement statement = null;

        try {
            connection = DBConnector.getConnection();
            statement = connection.prepareStatement(query);
            statement.setString(1, payment.getReservationId());
            statement.setDouble(2, payment.getAmount());
            statement.setString(3, payment.getPaymentMethod());
            statement.executeUpdate();
        } finally {
            DBConnector.closeConnection(connection);
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
