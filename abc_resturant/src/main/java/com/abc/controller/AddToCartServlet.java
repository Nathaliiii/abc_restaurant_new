package com.abc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddToCartServlet")
public class AddToCartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String item = request.getParameter("item");
        
        // Store the selected item in the request scope
        request.setAttribute("selectedItem", item);
        
        // Forward to add-to-cart.jsp
        request.getRequestDispatcher("add-to-cart.jsp").forward(request, response);
    }
}
