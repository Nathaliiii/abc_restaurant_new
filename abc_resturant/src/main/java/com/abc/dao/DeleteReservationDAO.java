package com.abc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteReservationDAO {
    private DBConnector dbConnector;

    public DeleteReservationDAO() {
        dbConnector = new DBConnector();
    }

    public boolean deleteReservation(String id) {
        String query = "DELETE FROM reservations WHERE id = ?";
        try (Connection connection = dbConnector.getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
            
            statement.setString(1, id);
            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
