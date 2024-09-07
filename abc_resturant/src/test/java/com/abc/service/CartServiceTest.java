package com.abc.service;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import javax.servlet.http.HttpSession;
import static org.mockito.Mockito.*;
import java.util.HashMap;
import java.util.Map;
import static org.junit.jupiter.api.Assertions.*;

class CartServiceTest {

    private CartService cartService;
    private HttpSession session;

    @BeforeEach
    void setUp() {
        cartService = new CartService();
        session = mock(HttpSession.class);
    }

    @Test
    void testAddProductToCart_NewCart() {
        
        when(session.getAttribute("cart")).thenReturn(null);

        
        boolean result = cartService.addProductToCart("product1", 2, session);

        
        Map<String, Integer> expectedCart = new HashMap<>();
        expectedCart.put("product1", 2);

        verify(session).setAttribute(eq("cart"), anyMap());
        assertTrue(result, "Product should be added to the cart");
    }

    @Test
    void testAddProductToCart_ExistingCart() {
        
        Map<String, Integer> existingCart = new HashMap<>();
        existingCart.put("product1", 1);

        when(session.getAttribute("cart")).thenReturn(existingCart);

        
        boolean result = cartService.addProductToCart("product1", 3, session);

        
        assertEquals(3, existingCart.get("product1"));
        assertTrue(result, "Product quantity should be updated");
    }
}
