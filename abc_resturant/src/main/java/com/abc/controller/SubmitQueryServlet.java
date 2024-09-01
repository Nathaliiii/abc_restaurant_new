package com.abc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SubmitQueryServlet")  // Ensure this matches your form action URL
public class SubmitQueryServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get form data from request
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");

        // Code to add details to the database (DAO logic)
        // Example: SpecialMenuRequestDAO.addRequest(new SpecialMenuRequest(name, email, subject, message));

        // Set success message attribute
        response.sendRedirect("query.jsp?success=true");
    }
}
