package com.abc.service;

import com.abc.dao.OrderDAO;
import com.abc.model.Order;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.Mockito.*;

public class OrderServiceTest {

    private OrderService orderService;
    private OrderDAO mockOrderDAO;

    @BeforeEach
    public void setUp() {
        // Mock the OrderDAO
        mockOrderDAO = Mockito.mock(OrderDAO.class);
        // Inject the mock into the service using the constructor
        orderService = new OrderService(mockOrderDAO);
    }

    @Test
    public void testPlaceOrder_Success() {
        // Create test data
        String customerName = "John Doe";
        String contactNumber = "1234567890";
        String foodItem = "Pizza";
        int quantity = 2;
        String specialRequests = "Extra cheese";
        String paymentMethod = "Credit Card";

        // Set up the mock to return true when addOrder is called
        when(mockOrderDAO.addOrder(any(Order.class))).thenReturn(true);

        // Call the method under test
        boolean result = orderService.placeOrder(customerName, contactNumber, foodItem, quantity, specialRequests, paymentMethod);

        // Assert that the result is true
        assertTrue(result);

        // Verify that the addOrder method was called with the expected order
        verify(mockOrderDAO, times(1)).addOrder(any(Order.class));
    }
}
