package com.abc.controller;

import com.abc.dao.UserDAO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDAO userDAO = new UserDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String contactNumber = request.getParameter("contactnumber");
        String password = request.getParameter("password");

        System.out.println("Received data: Name=" + name + ", Email=" + email + ", Contact=" + contactNumber); // Debugging

        boolean result = userDAO.saveUser(name, email, contactNumber, password);

        if (result) {
            // Redirect to reservation.jsp with a success message in the query string
            response.sendRedirect("Reservation.jsp?successMessage=Registration%20successful!%20You%20can%20now%20make%20a%20reservation.");
        } else {
            // Set error message and forward back to signup.jsp
            request.setAttribute("errorMessage", "Registration failed. Please try again.");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        }
    }
}
