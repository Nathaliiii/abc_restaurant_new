package com.abc.service;

import com.abc.dao.DeleteReservationDAO;

public class DeleteReservationService {
    private DeleteReservationDAO deleteReservationDAO;

    public DeleteReservationService() {
        deleteReservationDAO = new DeleteReservationDAO();
    }

    public boolean deleteReservationById(String id) {
        return deleteReservationDAO.deleteReservation(id);
    }
}
