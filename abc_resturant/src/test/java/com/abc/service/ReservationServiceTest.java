package com.abc.service;

import com.abc.dao.ReservationDAO;
import com.abc.model.Reservation;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.Mockito.*;

public class ReservationServiceTest {

    private ReservationService reservationService;
    private ReservationDAO mockReservationDAO;

    @BeforeEach
    public void setUp() {
        // **Mock ReservationDAO**
        mockReservationDAO = Mockito.mock(ReservationDAO.class);
        reservationService = new ReservationService();
        // **Use the setter to inject the mock DAO**
        reservationService.setReservationDAO(mockReservationDAO);
    }

    @Test
    public void testBookTable_Success() {
        // **Create test data for the reservation**
        String name = "Jane Doe";
        int numberOfPeople = 4;
        String date = "2024-09-02";
        String time = "19:30";

        // **Mock the DAO to return true when addReservation is called**
        when(mockReservationDAO.addReservation(any(Reservation.class))).thenReturn(true);

        // **Call the bookTable method in ReservationService**
        boolean result = reservationService.bookTable(name, numberOfPeople, date, time);

        // **Assert that the result is true**
        assertTrue(result); 

        // **Verify that addReservation was called once**
        verify(mockReservationDAO, times(1)).addReservation(any(Reservation.class));
    }
}
