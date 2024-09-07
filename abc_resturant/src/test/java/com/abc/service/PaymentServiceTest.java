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
        
        paymentDAOMock = Mockito.mock(PaymentDAO.class);
        
        paymentService = new PaymentService(paymentDAOMock);
    }

    @Test
    public void testProcessPaymentSuccess() throws SQLException {
        
        Payment payment = new Payment();
        payment.setReservationId("12345");
        payment.setAmount(new BigDecimal("100.00"));
        payment.setPaymentMethod("Credit Card");

        
        doNothing().when(paymentDAOMock).addPayment(payment);
       
        boolean result = paymentService.processPayment(payment);        
        assertTrue(result, "Payment should be processed successfully.");
    }
}
