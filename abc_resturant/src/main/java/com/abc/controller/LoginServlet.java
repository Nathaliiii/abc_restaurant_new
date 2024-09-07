package com.abc.controller;

import com.abc.dao.AdminStaffDAO;
import com.abc.model.AdminStafflog;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        AdminStaffDAO adminStaffDAO = new AdminStaffDAO();
        AdminStafflog user = adminStaffDAO.getUserByUsername(username, role);

        if (user != null && user.getPassword().equals(password)) {
            // Set success message in request
            request.setAttribute("successMessage", "Logged in successfully as " + (role.equals("admin") ? "Admin" : "Staff") + "!");
            
            // Forward back to login page with success message
            request.getRequestDispatcher("AdminStafflogin.jsp").forward(request, response);
        } else {
            // Set error message in request
            request.setAttribute("errorMessage", "Invalid credentials or role");
            request.getRequestDispatcher("AdminStafflogin.jsp").forward(request, response);
        }
    }
}
