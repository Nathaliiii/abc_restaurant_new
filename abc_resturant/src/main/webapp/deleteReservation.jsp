<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.abc.dao.DBConnector" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Reservation</title>
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

        p {
            text-align: center;
            color: #e74c3c;
            font-size: 18px;
            margin-top: 20px;
        }

        .centered {
            text-align: center;
            margin-top: 20px;
        }

        button,
        a.button {
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-top: 20px;
            display: inline-block;
            text-align: center;
            text-decoration: none;
        }

        button {
            background-color: #e74c3c;
            color: #fff;
            border: none;
        }

        button:hover {
            background-color: #c0392b;
        }

        a.button {
            border: 2px solid #3498db;
            background-color: #fff;
            color: #3498db;
        }

        a.button:hover {
            background-color: #3498db;
            color: #fff;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Delete Reservation</h1>

        <% 
            String reservationId = request.getParameter("id");
            Connection conn = null;
            PreparedStatement ps = null;
            boolean reservationExists = false;

            try {
                conn = DBConnector.getConnection();
                ps = conn.prepareStatement("SELECT * FROM reservations WHERE reservation_id = ?");
                ps.setString(1, reservationId);
                ResultSet rs = ps.executeQuery();
                
                if (rs.next()) {
                    reservationExists = true;
                } else {
                    out.println("<p>No reservation found with ID: " + reservationId + "</p>");
                }
            } catch (SQLException e) {
                e.printStackTrace(); // Handle SQL exception
            } finally {
                DBConnector.closeConnection(conn); // Ensure resources are closed
                if (ps != null) try { ps.close(); } catch (SQLException e) { e.printStackTrace(); }
            }
        %>

        <% if (reservationExists) { %>
            <form action="deleteReservationServlet" method="post">
                <input type="hidden" name="reservationId" value="<%= reservationId %>">
                <p>Are you sure you want to delete the reservation with ID: <%= reservationId %>?</p>
                <button type="submit" class="button">Delete Reservation</button>
            </form>
        <% } %>

        <div class="centered">
            <a href="manageReservations.jsp" class="button">Back to Reservations</a>
        </div>
    </div>
</body>
</html>
