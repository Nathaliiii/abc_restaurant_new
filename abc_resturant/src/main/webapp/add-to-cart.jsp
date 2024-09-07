<%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add to Cart</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fff9c4; 
            color: #333;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 80%;
            margin: 50px auto;
            padding: 20px;
            background: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .form-container {
            width: 50%;
        }

        .image-container {
            width: 40%;
        }

        h1 {
            text-align: center;
            color: #2c3e50;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .button-group {
            display: flex;
            gap: 10px;
        }

        button {
            background-color: #27ae60;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #2ecc71;
        }

        .explore-button {
            background-color: #3498db;
        }

        .explore-button:hover {
            background-color: #5dade2;
        }

        .message {
            margin-top: 20px;
            text-align: center;
            font-size: 18px;
            color: #27ae60;
        }

        /* Image Styling */
        .image-container img {
            width: 100%;
            border-radius: 8px;
        }

        @media (max-width: 768px) {
            .container {
                flex-direction: column;
            }

            .form-container, .image-container {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Form section on the left -->
        <div class="form-container">
            <h1>Add to Cart</h1>
            <form action="ProcessCartServlet" method="post">
                <div class="form-group">
                    <label for="item">Item:</label>
                    <input type="text" id="item" name="item" required>
                </div>
                <div class="form-group">
                    <label for="quantity">Quantity:</label>
                    <input type="number" id="quantity" name="quantity" min="1" required>
                </div>
                <!-- Button group for Add to Cart and Explore More buttons -->
                <div class="button-group">
                    <button type="submit">Add to Cart</button>
                    <!-- Explore More button, redirects to explore-more.jsp -->
                    <button type="button" class="explore-button" onclick="window.location.href='Explore more.jsp'">Explore More</button>
                </div>
            </form>

            <div class="message">
                <% if (request.getAttribute("message") != null) { %>
                    <p><%= request.getAttribute("message") %></p>
                <% } %>
            </div>
        </div>

        <!-- Image section on the right -->
        <div class="image-container">
            <img src="images/cart.jpg" alt="Cart Image">
        </div>
    </div>
</body>
</html>
