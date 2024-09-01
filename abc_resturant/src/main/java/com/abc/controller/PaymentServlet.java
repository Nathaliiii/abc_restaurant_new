package com.abc.controller;

import com.abc.dao.PaymentDAO;
import com.abc.model.Payment;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/processPaymentAction.jsp")
public class PaymentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String reservationId = request.getParameter("reservationId");
        String amountStr = request.getParameter("amount");
        String paymentMethod = request.getParameter("paymentMethod");

        // Remove non-numeric characters
        double amount = parseAmount(amountStr);

        Payment payment = new Payment();
        payment.setReservationId(reservationId);
        payment.setAmount(amount);
        payment.setPaymentMethod(paymentMethod);

        PaymentDAO paymentDAO = new PaymentDAO();

        try {
            paymentDAO.addPayment(payment);
            response.sendRedirect("processPayments.jsp?success=true");
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("processPayments.jsp?error=true");
        }
    }

    private double parseAmount(String amountStr) {
        // Remove "Rs." and any other non-numeric characters
        if (amountStr != null) {
            amountStr = amountStr.replaceAll("[^0-9.]", ""); // Keep only digits and dot
            try {
                return Double.parseDouble(amountStr);
            } catch (NumberFormatException e) {
                e.printStackTrace();
                return 0.0; // or handle error as appropriate
            }
        }
        return 0.0; // Default value if input is null
    }
}
