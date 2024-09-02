package com.abc.controller;

import com.abc.model.Payment;
import com.abc.service.PaymentService;
import com.abc.dao.PaymentDAO; // Make sure this import is included

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;

@WebServlet("/processPaymentAction")
public class PaymentServlet extends HttpServlet {

    private PaymentService paymentService;

    @Override
    public void init() throws ServletException {
        super.init();
        PaymentDAO paymentDAO = new PaymentDAO(); // Initialize PaymentDAO
        this.paymentService = new PaymentService(paymentDAO); // Inject PaymentDAO
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String reservationId = request.getParameter("reservationId");
        String amountStr = request.getParameter("amount");
        String paymentMethod = request.getParameter("paymentMethod");

        BigDecimal amount = new BigDecimal(amountStr);

        Payment payment = new Payment();
        payment.setReservationId(reservationId);
        payment.setAmount(amount);
        payment.setPaymentMethod(paymentMethod);

        boolean isPaymentProcessed = paymentService.processPayment(payment);

        if (isPaymentProcessed) {
            response.sendRedirect("ProcessPayment.jsp?success=true");
        } else {
            response.sendRedirect("ProcessPayment.jsp?error=true");
        }
    }
}
