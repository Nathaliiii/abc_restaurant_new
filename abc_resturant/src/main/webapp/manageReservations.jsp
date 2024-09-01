<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.abc.model.Reservation" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Reservations</title>
    <link rel="stylesheet" type="text/css" href="styles.css"> <!-- Link to your CSS file -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            padding: 20px;
        }

        h1 {
            color: #006400; /* Dark Green */
        }

        .reservation-table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px 0;
        }

        .reservation-table th, .reservation-table td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        .reservation-table th {
            background-color: #d0f0c0; /* Light Green */
            color: #006400; /* Dark Green */
        }

        .reservation-table tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .reservation-table tr:hover {
            background-color: #ddd;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            margin: 5px;
            text-decoration: none;
            color: #fff;
            background-color: #006400; /* Dark Green */
            border-radius: 5px;
            text-align: center;
        }

        .button:hover {
            background-color: #004d00; /* Darker Green */
        }

        .button-group {
            margin: 20px 0;
            text-align: center;
        }

        .image-container {
            margin-top: 20px;
            text-align: center;
        }

        .image-container img {
            max-width: 600px; /* Set the maximum width */
            height: auto; /* Maintain aspect ratio */
            border-radius: 5px;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Manage Reservations</h1>
    
    <!-- Reservations Table -->
    <table class="reservation-table">
        <thead>
            <tr>
                <th>Reservation ID</th>
                <th>Customer Name</th>
                <th>Number of People</th>
                <th>Date</th>
                <th>Time</th> <!-- Added Time Column -->
                <th>Status</th>
                <th>Actions</th>
            </tr>
            <tr>
                <td>101</td>
                <td>Poornima Weerasekara </td>
                <td>8</td>
                <td>24/08/2024</td>
                 <td>08:00 am</td>
                  <td>Confirmed</td>
                   <td>cash</td>
            </tr>
            <tr>
                <td>102</td>
                <td>Sonal Perera</td>
                <td>2</td>
                <td>19/08/2024</td>
                 <td>09:00 pm</td>
                  <td>pending</td>
                   <td>cash</td>
            </tr>
            <tr>
                <td>103</td>
                <td>Waruni Silva</td>
                <td>5</td>
                <td>10/09/2024</td>
                 <td>05:00 pm</td>
                  <td>pending</td>
                   <td>online payment</td>
            </tr>
        </thead>
        <tbody>
            <%-- Dynamically populated reservation data --%>
            <%
                List<Reservation> reservations = (List<Reservation>) request.getAttribute("reservations");
                if (reservations != null) {
                    for (Reservation reservation : reservations) {
            %>
            <tr>
                <td><%= reservation.getId() %></td>
                <td><%= reservation.getName() %></td>
                <td><%= reservation.getNumberOfPeople() %></td>
                <td><%= reservation.getDate() %></td>
                <td><%= reservation.getTime() %></td> <!-- Display Time -->
                <td><%= reservation.getStatus() %></td>
                <td>
                    <a href="editReservation.jsp?id=<%= reservation.getId() %>" class="button">Edit</a>
                    <form action="deleteReservation" method="post" style="display:inline;">
                        <input type="hidden" name="reservationId" value="<%= reservation.getId() %>">
                        <button type="submit" class="button">Delete</button>
                    </form>
                </td>
            </tr>
            <%      }
                }
            %>
        </tbody>
    </table>

    <!-- Buttons for other actions -->
    <div class="button-group">
        <a href="addCustomer.jsp" class="button">Add Customer</a>
        <a href="StaffDashboard.jsp" class="button">Staff Dashboard</a>
    </div>

</div>

<!-- Optional Image -->
<div class="image-container">
    <img src="images/reserve.jpg" alt="Manage Reservations">
</div>

</body>
</html>
