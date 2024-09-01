package com.abc.controller;

import com.abc.service.OrderService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/submitOrder")
public class OrderServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private OrderService orderService;

    @Override
    public void init() throws ServletException {
        orderService = new OrderService();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String customerName = request.getParameter("customerName");
        String contactNumber = request.getParameter("contactNumber");
        String foodItem = request.getParameter("foodItem");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String specialRequests = request.getParameter("specialRequests");
        String paymentMethod = request.getParameter("paymentMethod");

        boolean orderPlaced = orderService.placeOrder(customerName, contactNumber, foodItem, quantity, specialRequests, paymentMethod);

        if (orderPlaced) {
            request.setAttribute("message", "Order placed successfully!");
        } else {
            request.setAttribute("message", "Error occurred while placing the order. Please try again.");
        }

        request.getRequestDispatcher("Order.jsp").forward(request, response);
    }
}
