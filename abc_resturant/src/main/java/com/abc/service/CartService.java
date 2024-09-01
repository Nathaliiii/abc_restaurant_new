package com.abc.service;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

public class CartService {

    public boolean addProductToCart(String productId, int quantity, HttpSession session) {
        // Create a cart if it doesn't exist
        Object cart = session.getAttribute("cart");
        if (cart == null) {
            cart = new HashMap<String, Integer>();
            session.setAttribute("cart", cart);
        }

        // Add the product to the cart
        @SuppressWarnings("unchecked")
        Map<String, Integer> cartMap = (Map<String, Integer>) cart;
        cartMap.put(productId, quantity);
        
        return true; // Assume success
    }
}
