package com.abc.service;

import com.abc.dao.ReservationDAO;
import com.abc.model.Reservation;

public class ReservationService {
    private ReservationDAO reservationDAO;

    public ReservationService() {
        reservationDAO = new ReservationDAO();
    }

    public boolean bookTable(String name, int numberOfPeople, String date, String time) {
        // Use the constructor with the required fields
        Reservation reservation = new Reservation(name, numberOfPeople, date, time);
        return reservationDAO.addReservation(reservation);
    }
}
