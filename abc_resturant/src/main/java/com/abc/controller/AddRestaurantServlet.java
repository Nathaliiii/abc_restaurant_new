package com.abc.controller;

import com.abc.dao.DBConnector;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddRestaurantServlet")
public class AddRestaurantServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String email = request.getParameter("email");
        String websiteLink = request.getParameter("websiteLink");
        String operatingHours = request.getParameter("operatingHours");
        String seatingCapacity = request.getParameter("seatingCapacity");
        String deliveryPartners = request.getParameter("deliveryPartners");
        String restaurantDescription = request.getParameter("restaurantDescription");

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            // Get a connection from DBConnector
            conn = DBConnector.getConnection();

            // SQL query to insert data
            String sql = "INSERT INTO restaurant_info (email, website_link, operating_hours, seating_capacity, delivery_partners, restaurant_description) VALUES (?, ?, ?, ?, ?, ?)";

            stmt = conn.prepareStatement(sql);
            stmt.setString(1, email);
            stmt.setString(2, websiteLink);
            stmt.setString(3, operatingHours);
            stmt.setInt(4, Integer.parseInt(seatingCapacity));
            stmt.setString(5, deliveryPartners);
            stmt.setString(6, restaurantDescription);

            // Execute the insert operation
            int rowsInserted = stmt.executeUpdate();
            if (rowsInserted > 0) {
                // Redirect to a success page
                response.sendRedirect("success.jsp");
            } else {
                // Redirect back to the form with an error message
                response.sendRedirect("error.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        } finally {
            // Close the statement and connection
            DBConnector.closeConnection(conn);
        }
    }
}
