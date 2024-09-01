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

@WebServlet("/addUserServlet")
public class AddUserServlet extends HttpServlet {
    private UserRepository userRepository = new UserRepository();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        AppUser user = new AppUser();
        user.setUsername(username);
        user.setPassword(password);
        user.setRole(role);

        try {
            boolean success = userRepository.addUser(user);
            if (success) {
                // Redirect back to the user management page to fetch the updated user list
                response.sendRedirect("manageUsersServlet");
            } else {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Unable to add user");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error occurred");
        }
    }
}
