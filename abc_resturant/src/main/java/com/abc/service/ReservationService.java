package com.abc.service;

import com.abc.dao.ReservationDAO;
import com.abc.model.Reservation;  // Import the Reservation class

public class ReservationService {
    private ReservationDAO reservationDAO;

    public ReservationService() {
        this.reservationDAO = new ReservationDAO();
    }

   
    protected void setReservationDAO(ReservationDAO reservationDAO) {
        this.reservationDAO = reservationDAO;
    }

    public boolean bookTable(String name, int numberOfPeople, String date, String time) {
        Reservation reservation = new Reservation(name, numberOfPeople, date, time);
        return reservationDAO.addReservation(reservation);
    }
}
