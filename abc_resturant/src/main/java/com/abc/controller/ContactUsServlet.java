package com.abc.controller;

import com.abc.service.ContactUsService;
import com.abc.model.ContactUs;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/contactus")
public class ContactUsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ContactUsService contactUsService = new ContactUsService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        ContactUs contactUs = new ContactUs();
        contactUs.setName(name);
        contactUs.setEmail(email);
        contactUs.setMessage(message);

        try {
            contactUsService.addContactUs(contactUs);
            response.sendRedirect("success.jsp"); // Redirect to a success page
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp"); // Redirect to an error page
        }
    }
}
