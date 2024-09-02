package com.abc.service;

import com.abc.dao.RestaurantDAO;
import com.abc.model.Restaurant;

import java.sql.SQLException;

public class RestaurantService {

    private RestaurantDAO restaurantDAO;

    // Constructor with RestaurantDAO parameter
    public RestaurantService(RestaurantDAO restaurantDAO) {
        this.restaurantDAO = restaurantDAO;
    }

    // Method to add a restaurant
    public boolean addRestaurant(Restaurant restaurant) {
        try {
            restaurantDAO.addRestaurant(restaurant);
            return true; // Indicate success
        } catch (SQLException e) {
            e.printStackTrace();
            return false; // Indicate failure
        }
    }
}
