package com.abc.controller;

import com.abc.service.ReservationService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/reserve")
public class CustomerReservationServlet extends HttpServlet {
    private ReservationService reservationService;

    @Override
    public void init() throws ServletException {
        reservationService = new ReservationService();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        int numberOfPeople = Integer.parseInt(request.getParameter("people"));
        String date = request.getParameter("date");
        String time = request.getParameter("time");

        boolean isReserved = reservationService.bookTable(name, numberOfPeople, date, time);

        if (isReserved) {
            request.setAttribute("message", "Reservation successful!");
        } else {
            request.setAttribute("message", "Reservation failed. Please try again.");
        }

        request.getRequestDispatcher("Reservation.jsp").forward(request, response); 
    }
}
