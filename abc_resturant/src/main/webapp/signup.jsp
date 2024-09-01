<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <style>
        /* CSS directly in JSP */
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/signupb.jpg'); /* Background image */
            background-size: cover; /* Cover the entire background */
            background-position: center; /* Center the image */
            margin: 0;
            padding: 0;
            color: #333;
        }

        .container {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        .image-section {
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .image-section img {
            width: 100%;
            height: auto;
            max-width: 500px; /* Adjust as needed */
            border-radius: 8px;
        }

        .form-section {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .form-container {
            max-width: 400px;
            width: 100%;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #4CAF50;
            margin-bottom: 20px;
            text-align: center;
        }

        .signup-form {
            display: flex;
            flex-direction: column;
        }

        .signup-form label {
            width: 100%;
            text-align: left;
            color: #333;
            font-weight: bold;
            margin: 10px 0 5px;
        }

        .signup-form input[type="text"], .signup-form input[type="email"], .signup-form input[type="tel"], .signup-form input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .signup-form input[type="submit"] {
            background-color: lightgreen;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .signup-form input[type="submit"]:hover {
            background-color: #45a049;
        }

        .success-message {
            color: #4CAF50;
            font-size: 1.2em;
            text-align: center;
            margin-top: 20px;
        }

        .error-message {
            color: #FF0000;
            font-size: 1.2em;
            text-align: center;
            margin-top: 20px;
        }

        .back-to-home {
            display: block;
            width: 100%;
            text-align: center;
            margin-top: 20px;
        }

        .back-to-home a {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 1em;
        }

        .back-to-home a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Image Section -->
        <div class="image-section">
            <img src="images/signup.jpg" alt="Sign Up Image">
        </div>

        <!-- Form Section -->
        <div class="form-section">
            <div class="form-container">
                <h2>Sign Up</h2>
                <form class="signup-form" action="signup" method="post">
                    <label for="name">Full Name:</label>
                    <input type="text" id="name" name="name" required>

                    <label for="email">Email Address:</label>
                    <input type="email" id="email" name="email" required>

                    <label for="contact">Contact Number:</label>
                    <input type="tel" id="contact" name="contactnumber" required>


                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>

                    <input type="submit" value="Sign Up">
                </form>
                <% 
                    // Check if there's a success or error message from the servlet
                    String successMessage = (String) request.getAttribute("successMessage");
                    String errorMessage = (String) request.getAttribute("errorMessage");
                    if (successMessage != null) {
                %>
                    <div class="success-message"><%= successMessage %></div>
                <% } else if (errorMessage != null) { %>
                    <div class="error-message"><%= errorMessage %></div>
                <% } %>
                <div class="back-to-home">
                    <a href="Home.jsp">Back to Home</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
