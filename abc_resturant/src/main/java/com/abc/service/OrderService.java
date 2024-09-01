package com.abc.service;

import com.abc.dao.OrderDAO;
import com.abc.model.Order;

public class OrderService {
    private OrderDAO orderDAO;

    // Constructor for Dependency Injection
    public OrderService(OrderDAO orderDAO) {
        this.orderDAO = orderDAO;
    }

    // Default constructor for normal use
    public OrderService() {
        this.orderDAO = new OrderDAO();
    }

    public boolean placeOrder(String customerName, String contactNumber, String foodItem, int quantity, String specialRequests, String paymentMethod) {
        Order order = new Order(customerName, contactNumber, foodItem, quantity, specialRequests, paymentMethod);
        return orderDAO.addOrder(order);
    }
}
