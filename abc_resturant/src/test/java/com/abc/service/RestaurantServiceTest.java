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
       
        restaurantDAO = Mockito.mock(RestaurantDAO.class);
        
        restaurantService = new RestaurantService(restaurantDAO);
    }

    @Test
    public void testAddRestaurantSuccess() throws SQLException {
        
        Restaurant restaurant = new Restaurant();
        restaurant.setEmail("test@example.com");
        restaurant.setWebsiteLink("http://example.com");
        restaurant.setOperatingHours("9 AM - 9 PM");
        restaurant.setSeatingCapacity(50);
        restaurant.setDeliveryPartners("Partner1, Partner2");
        restaurant.setRestaurantDescription("A test restaurant");

        
        Mockito.doNothing().when(restaurantDAO).addRestaurant(Mockito.any(Restaurant.class));

        
        boolean result = restaurantService.addRestaurant(restaurant);

        assertTrue(result);
        Mockito.verify(restaurantDAO).addRestaurant(Mockito.any(Restaurant.class));
    }

    @Test
    public void testAddRestaurantFailure() throws SQLException {
        
        Restaurant restaurant = new Restaurant();
        restaurant.setEmail("test@example.com");
        restaurant.setWebsiteLink("http://example.com");
        restaurant.setOperatingHours("9 AM - 9 PM");
        restaurant.setSeatingCapacity(50);
        restaurant.setDeliveryPartners("Partner1, Partner2");
        restaurant.setRestaurantDescription("A test restaurant");

       
        Mockito.doThrow(new SQLException()).when(restaurantDAO).addRestaurant(Mockito.any(Restaurant.class));

        
        boolean result = restaurantService.addRestaurant(restaurant);

       
        assertFalse(result);
        Mockito.verify(restaurantDAO).addRestaurant(Mockito.any(Restaurant.class));
    }
}
