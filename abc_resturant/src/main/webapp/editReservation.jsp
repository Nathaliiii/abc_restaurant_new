<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.abc.model.Reservation" %>
<%
    Reservation reservation = (Reservation) request.getAttribute("reservation");
    if (reservation == null) {
        // Handle the case where reservation is not found
        response.sendError(HttpServletResponse.SC_NOT_FOUND, "Reservation not found");
        return;
    }
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Reservation</title>
    <style>
        /* Basic Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            background-color: #e8f5e9; /* Light Green Background */
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
        input[type="number"],
        input[type="date"],
        input[type="time"] {
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            margin-bottom: 15px;
            font-size: 16px;
        }

        input[type="text"]:focus,
        input[type="number"]:focus,
        input[type="date"]:focus,
        input[type="time"]:focus {
            border-color: #3498db;
            outline: none;
        }

        button {
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            background-color: #3498db;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-top: 20px;
        }

        button:hover {
            background-color: #2980b9;
        }

        a.button {
            display: inline-block;
            padding: 10px 20px;
            margin-top: 20px;
            text-decoration: none;
            color: #fff;
            background-color: #e74c3c; /* Red Button */
            border-radius: 4px;
        }

        a.button:hover {
            background-color: #c0392b;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Edit Reservation</h1>
    <form action="updateReservation" method="post">
        <input type="hidden" name="reservationId" value="<%= reservation.getId() %>">
        
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="<%= reservation.getName() %>" required>
        
        <label for="numberOfPeople">Number of People:</label>
        <input type="number" id="numberOfPeople" name="numberOfPeople" value="<%= reservation.getNumberOfPeople() %>" required>
        
        <label for="date">Date:</label>
        <input type="date" id="date" name="date" value="<%= reservation.getDate() %>" required>
        
        <label for="time">Time:</label>
        <input type="time" id="time" name="time" value="<%= reservation.getTime() %>" required>

        <button type="submit">Update Reservation</button>
    </form>
    <a href="manageReservations.jsp" class="button">Back to Reservations</a>
</div>

</body>
</html>
