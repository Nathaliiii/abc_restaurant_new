<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Process Payments</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/paymentb.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: #333;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
            height: 100vh;
        }

        .image-container, .payment-form-container {
            flex: 1;
            padding: 20px;
        }

        .payment-form {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
        }

        .payment-form label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .payment-form input, .payment-form select, .payment-form button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .payment-form button {
            background-color: #006400;
            color: white;
            border: none;
            cursor: pointer;
        }

        .payment-form button:hover {
            background-color: #004d00;
        }

        .success-message {
            color: green;
            font-weight: bold;
            text-align: center;
        }

        .error-message {
            color: red;
            font-weight: bold;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="image-container">
        <img src="images/payment.jpg" alt="Process Payments" style="width: 100%; height: auto;">
    </div>

    <div class="payment-form-container">
        <h1>Process Payments</h1>
        <div class="payment-form">
            <% 
                String success = request.getParameter("success");
                String error = request.getParameter("error");
                if ("true".equals(success)) {
            %>
                <div class="success-message">
                    Payment processed successfully!
                </div>
            <% } else if ("true".equals(error)) { %>
                <div class="error-message">
                    There was an error processing the payment. Please try again.
                </div>
            <% } %>

            <form action="processPaymentAction" method="post">
                <label for="reservationId">Reservation ID:</label>
                <input type="text" id="reservationId" name="reservationId" required>

                <label for="amount">Amount:</label>
                <input type="text" id="amount" name="amount" required>

                <label for="paymentMethod">Payment Method:</label>
                <select id="paymentMethod" name="paymentMethod" required>
                    <option value="">Select Payment Method</option>
                    <option value="creditCard">Credit Card</option>
                    <option value="debitCard">Debit Card</option>
                    <option value="paypal">PayPal</option>
                    <option value="bankTransfer">Bank Transfer</option>
                </select>

                <button type="submit">Process Payment</button>
            </form>
        </div>
    </div>
</div>

</body>
</html>
