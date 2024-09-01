package com.abc.controller;

import com.abc.dao.CustomerDAO;
import com.abc.model.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/addCustomerServlet")
public class AddCustomerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve data from the form
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String contactNumber = request.getParameter("contactNumber");

        // Create a new Customer object
        Customer customer = new Customer(name, email, contactNumber);

        // Save customer to the database using DAO
        CustomerDAO customerDAO = new CustomerDAO();
        boolean success = customerDAO.addCustomer(customer);

        // Redirect or display a success message
        if (success) {
            // Set a success message in the request
            request.setAttribute("successMessage", "Customer added successfully!");
            // Forward back to the addCustomer.jsp page to display the message
            request.getRequestDispatcher("addCustomer.jsp").forward(request, response);
        } else {
            // Forward back with an error message if it failed
            request.setAttribute("errorMessage", "Failed to add customer. Please try again.");
            request.getRequestDispatcher("addCustomer.jsp").forward(request, response);
        }
    }
}
