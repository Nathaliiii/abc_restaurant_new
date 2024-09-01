package com.abc.dao;

import com.abc.model.Restaurant;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RestaurantDAO {

    public void addRestaurant(Restaurant restaurant) throws SQLException {
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            conn = DBConnector.getConnection();
            String sql = "INSERT INTO restaurant_info (email, website_link, operating_hours, seating_capacity, delivery_partners, restaurant_description) VALUES (?, ?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, restaurant.getEmail());
            stmt.setString(2, restaurant.getWebsiteLink());
            stmt.setString(3, restaurant.getOperatingHours());
            stmt.setInt(4, restaurant.getSeatingCapacity());
            stmt.setString(5, restaurant.getDeliveryPartners());
            stmt.setString(6, restaurant.getRestaurantDescription());

            stmt.executeUpdate();
        } finally {
            DBConnector.closeConnection(conn);
        }
    }
}
