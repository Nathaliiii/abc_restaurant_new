package com.abc.controller;

import com.abc.service.DeleteReservationService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deleteReservation")
public class DeleteReservationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private DeleteReservationService deleteReservationService;

    @Override
    public void init() throws ServletException {
        super.init();
        deleteReservationService = new DeleteReservationService();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the reservation ID from the form
        String reservationId = request.getParameter("reservationId");

        // Call the service to delete the reservation
        if (deleteReservationService.deleteReservationById(reservationId)) {
            // Redirect to success page if deletion is successful
            response.sendRedirect("reservationSuccess.jsp");
        } else {
            // Redirect to error page if deletion fails
            response.sendRedirect("reservationError.jsp");
        }
    }
}
