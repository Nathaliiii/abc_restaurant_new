package com.abc.service;

import com.abc.dao.RestaurantDAO;
import com.abc.model.Restaurant;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

import java.sql.SQLException;

import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.junit.jupiter.api.Assertions.assertFalse;

public class RestaurantServiceTest {

    private RestaurantDAO restaurantDAO;
    private RestaurantService restaurantService;

    @BeforeEach
    public void setUp() {
        // Create a mock of RestaurantDAO
        restaurantDAO = Mockito.mock(RestaurantDAO.class);
        // Inject the mock into RestaurantService
        restaurantService = new RestaurantService(restaurantDAO);
    }

    @Test
    public void testAddRestaurantSuccess() throws SQLException {
        // Create a Restaurant object
        Restaurant restaurant = new Restaurant();
        restaurant.setEmail("test@example.com");
        restaurant.setWebsiteLink("http://example.com");
        restaurant.setOperatingHours("9 AM - 9 PM");
        restaurant.setSeatingCapacity(50);
        restaurant.setDeliveryPartners("Partner1, Partner2");
        restaurant.setRestaurantDescription("A test restaurant");

        // Configure the mock to do nothing on addRestaurant
        Mockito.doNothing().when(restaurantDAO).addRestaurant(Mockito.any(Restaurant.class));

        // Call the method under test
        boolean result = restaurantService.addRestaurant(restaurant);

        // Verify the result and that the method was called
        assertTrue(result);
        Mockito.verify(restaurantDAO).addRestaurant(Mockito.any(Restaurant.class));
    }

    @Test
    public void testAddRestaurantFailure() throws SQLException {
        // Create a Restaurant object
        Restaurant restaurant = new Restaurant();
        restaurant.setEmail("test@example.com");
        restaurant.setWebsiteLink("http://example.com");
        restaurant.setOperatingHours("9 AM - 9 PM");
        restaurant.setSeatingCapacity(50);
        restaurant.setDeliveryPartners("Partner1, Partner2");
        restaurant.setRestaurantDescription("A test restaurant");

        // Configure the mock to throw an SQLException
        Mockito.doThrow(new SQLException()).when(restaurantDAO).addRestaurant(Mockito.any(Restaurant.class));

        // Call the method under test
        boolean result = restaurantService.addRestaurant(restaurant);

        // Verify the result and that the method was called
        assertFalse(result);
        Mockito.verify(restaurantDAO).addRestaurant(Mockito.any(Restaurant.class));
    }
}
