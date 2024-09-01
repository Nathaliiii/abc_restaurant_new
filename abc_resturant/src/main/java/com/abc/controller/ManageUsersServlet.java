package com.abc.controller;

import com.abc.dao.UserRepository;
import com.abc.model.AppUser;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/manageUsersServlet")
public class ManageUsersServlet extends HttpServlet {
    
    private final UserRepository userRepository = new UserRepository(); // Initialized in-line

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Retrieve all users from the repository
            List<AppUser> users = userRepository.getAllUsers();
            
            // Set user list in the request scope
            request.setAttribute("userList", users);
            
            // Forward to manageUsers.jsp
            request.getRequestDispatcher("manageUsers.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            // Send error response if something goes wrong
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error fetching users from the database");
        }
    }
}
