package com.abc.service;

import com.abc.dao.PaymentDAO;
import com.abc.model.Payment;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

import java.math.BigDecimal;
import java.sql.SQLException;

import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.Mockito.doNothing;

public class PaymentServiceTest {

    private PaymentService paymentService;
    private PaymentDAO paymentDAOMock;

    @BeforeEach
    public void setUp() {
        // Create a mock PaymentDAO instance
        paymentDAOMock = Mockito.mock(PaymentDAO.class);
        // Initialize PaymentService with the mock PaymentDAO
        paymentService = new PaymentService(paymentDAOMock);
    }

    @Test
    public void testProcessPaymentSuccess() throws SQLException {
        // Arrange
        Payment payment = new Payment();
        payment.setReservationId("12345");
        payment.setAmount(new BigDecimal("100.00"));
        payment.setPaymentMethod("Credit Card");

        // Mock the behavior of addPayment to do nothing when called
        doNothing().when(paymentDAOMock).addPayment(payment);

        // Act
        boolean result = paymentService.processPayment(payment);

        // Assert
        assertTrue(result, "Payment should be processed successfully.");
    }
}
