<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Customer</title>
    <style>
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            background-color: #e8f5e9; 
            color: #333;
            padding: 20px;
        }

        .container {
            max-width: 800px;
            margin: auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #2c3e50;
            text-align: center;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            font-weight: bold;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="email"],
        input[type="tel"] {
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            margin-bottom: 15px;
            font-size: 16px;
        }

        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="tel"]:focus {
            border-color: #3498db;
            outline: none;
        }

        button {
            padding: 10px 20px;
            background-color: #3498db;
            color: #fff;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 20px;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #2980b9;
        }

        .centered {
            text-align: center;
            margin-top: 20px;
        }

        .message {
            margin-bottom: 20px;
            padding: 10px;
            border-radius: 4px;
            font-weight: bold;
            text-align: center;
        }

        .success {
            background-color: #dff0d8;
            color: #3c763d;
        }

        .error {
            background-color: #f2dede;
            color: #a94442;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Add Customer</h1>

        
        <%
            String successMessage = (String) request.getAttribute("successMessage");
            String errorMessage = (String) request.getAttribute("errorMessage");

            if (successMessage != null) {
        %>
            <div class="message success"><%= successMessage %></div>
        <%
            } else if (errorMessage != null) {
        %>
            <div class="message error"><%= errorMessage %></div>
        <%
            }
        %>

        <form action="addCustomerServlet" method="post">
            <label for="name">Customer Name:</label>
            <input type="text" id="name" name="name" required>
            <br>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            <br>
            <label for="contactNumber">Contact Number:</label>
            <input type="tel" id="contactNumber" name="contactNumber" required>
            <br>
            <button type="submit" class="button">Add Customer</button>
        </form>

        <div class="centered">
            <a href="manageReservations.jsp" class="button">Manage Reservations</a>
        </div>
    </div>
</body>
</html>
