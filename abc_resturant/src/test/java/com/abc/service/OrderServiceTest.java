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
        
        mockOrderDAO = Mockito.mock(OrderDAO.class);
        
        orderService = new OrderService(mockOrderDAO);
    }

    @Test
    public void testPlaceOrder_Success() {
        
        String customerName = "John Doe";
        String contactNumber = "1234567890";
        String foodItem = "Pizza";
        int quantity = 2;
        String specialRequests = "Extra cheese";
        String paymentMethod = "Credit Card";

       
        when(mockOrderDAO.addOrder(any(Order.class))).thenReturn(true);      
        boolean result = orderService.placeOrder(customerName, contactNumber, foodItem, quantity, specialRequests, paymentMethod);      
        assertTrue(result);        
        verify(mockOrderDAO, times(1)).addOrder(any(Order.class));
    }
}
