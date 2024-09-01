package com.abc.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.abc.dao.DBConnector;

@WebServlet("/ProcessCartServlet")
public class ProcessCartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String item = request.getParameter("item");
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        Connection connection = null;

        try {
            // Get a connection from DBConnector
            connection = DBConnector.getConnection();

            // Insert data into the cart table
            String sql = "INSERT INTO cart (item, quantity) VALUES (?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, item);
            statement.setInt(2, quantity);
            statement.executeUpdate();

            // Set success message
            request.setAttribute("message", "Item added to cart successfully!");

            // Close statement
            statement.close();
        } catch (Exception e) {
            e.printStackTrace();
            // Set error message
            request.setAttribute("message", "An error occurred. Please try again.");
        } finally {
            // Close the database connection
            DBConnector.closeConnection(connection);
        }

        // Forward to add-to-cart.jsp to show the message
        request.getRequestDispatcher("add-to-cart.jsp").forward(request, response);
    }
}
