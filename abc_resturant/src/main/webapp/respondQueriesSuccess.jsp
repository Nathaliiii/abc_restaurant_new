<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Respond Queries</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }
        .container {
            width: 50%;
            margin: auto;
            padding: 20px;
            margin-top: 50px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .success-message {
            color: green;
            font-weight: bold;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Query Response</h1>
    <% 
        String successMessage = (String) request.getAttribute("successMessage");
        if (successMessage != null) {
    %>
        <div class="success-message">
            <%= successMessage %>
        </div>
    <% } %>

    <div class="back-btn">
        <a href="query.jsp">Back to Query Form</a>
    </div>
</div>

</body>
</html>
