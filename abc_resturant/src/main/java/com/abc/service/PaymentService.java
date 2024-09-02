package com.abc.service;

import com.abc.dao.PaymentDAO;
import com.abc.model.Payment;
import java.sql.SQLException;

public class PaymentService {

    private PaymentDAO paymentDAO;

    // Constructor with PaymentDAO parameter
    public PaymentService(PaymentDAO paymentDAO) {
        this.paymentDAO = paymentDAO;
    }

    public boolean processPayment(Payment payment) {
        try {
            paymentDAO.addPayment(payment);
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
