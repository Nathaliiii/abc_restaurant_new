<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food Order</title>
    <style>
        /* CSS directly in JSP */
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/Orderbackground.jpg'); /* Updated background image */
            background-size: cover; /* Cover the entire background */
            background-position: center; /* Center the image */
            margin: 0;
            padding: 0;
            color: #333;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0 auto;
            max-width: 1200px;
        }

        .order-wrapper {
            display: flex;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            width: 100%;
            max-width: 1000px;
        }

        .image-section {
            flex: 1;
            width: 50%; /* This ensures the image takes half of the container */
        }

        .image-section img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .order-section {
            flex: 1;
            width: 50%; /* Order details will take the other half */
            padding: 30px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            background-color: rgba(255, 255, 255, 0.9);
        }

        .order-section h2 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
            color: #4CAF50;
        }

        .order-group {
            margin-bottom: 15px;
        }

        .order-group label {
            display: block;
            margin-bottom: 5px;
            font-size: 14px;
            color: #666;
        }

        .order-group input, .order-group select, .order-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
            outline: none;
        }

        .order-group input:focus, .order-group select:focus, .order-group textarea:focus {
            border-color: #8bc34a; /* light green */
        }

        .payment-method {
            margin-top: 20px;
        }

        .payment-method label {
            font-size: 14px;
            color: #666;
            display: block;
            margin-bottom: 5px;
        }

        .payment-method input[type="radio"] {
            margin-right: 10px;
        }

        .submit-btn, .back-home-btn {
            background-color: #8bc34a; /* light green */
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            width: 100%;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
        }

        .submit-btn:hover, .back-home-btn:hover {
            background-color: #7ab22e; /* darker shade of green */
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="order-wrapper">
            <!-- Left side image section -->
            <div class="image-section">
                <img src="images/order.jpg" alt="Food Order Image"> <!-- Ensure the image path is correct -->
            </div>

            <!-- Right side order details section -->
            <div class="order-section">
                <h2>Food Order</h2>
                <form action="submitOrder" method="post"> <!-- Updated form action to match servlet -->
                    <div class="order-group">
                        <label for="customerName">Name</label>
                        <input type="text" id="customerName" name="customerName" required>
                    </div>
                    <div class="order-group">
                        <label for="contactNumber">Contact Number</label>
                        <input type="text" id="contactNumber" name="contactNumber" required>
                    </div>
                    <div class="order-group">
                        <label for="foodItem">Select Food Item</label>
                        <select id="foodItem" name="foodItem" required>
                            <option value="Pizza">Pizza</option>
                            <option value="Burger">Burger</option>
                            <option value="Pasta">Pasta</option>
                            <option value="Salad">Salad</option>
                        </select>
                    </div>
                    <div class="order-group">
                        <label for="quantity">Quantity</label>
                        <input type="number" id="quantity" name="quantity" min="1" required>
                    </div>
                    <div class="order-group">
                        <label for="specialRequests">Special Requests</label>
                        <textarea id="specialRequests" name="specialRequests" rows="4"></textarea>
                    </div>
                    <div class="payment-method">
                        <label>Select Payment Method</label>
                        <input type="radio" id="onlinePayment" name="paymentMethod" value="Online" required>
                        <label for="onlinePayment">Online</label>
                        <input type="radio" id="cashPayment" name="paymentMethod" value="Cash" required>
                        <label for="cashPayment">Cash</label>
                    </div>
                    <button type="submit" class="submit-btn">Place Order</button>
                </form>
                <a href="Home.jsp" class="back-home-btn">Back to Home</a>
            </div>
        </div>
    </div>
</body>
</html>
