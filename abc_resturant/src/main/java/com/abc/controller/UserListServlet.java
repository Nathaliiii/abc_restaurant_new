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

@WebServlet("/manageUsers")
public class UserListServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserRepository userRepository = new UserRepository();
        try {
            List<AppUser> userList = userRepository.getAllUsers();
            request.setAttribute("userList", userList);
            request.getRequestDispatcher("manageUsers.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Database error: " + e.getMessage());
            request.getRequestDispatcher("manageUsers.jsp").forward(request, response);
        }
    }
}
