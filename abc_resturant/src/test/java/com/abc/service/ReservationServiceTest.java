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
        
        mockReservationDAO = Mockito.mock(ReservationDAO.class);
        reservationService = new ReservationService();
        
        reservationService.setReservationDAO(mockReservationDAO);
    }

    @Test
    public void testBookTable_Success() {
        
        String name = "Jane Doe";
        int numberOfPeople = 4;
        String date = "2024-09-02";
        String time = "19:30";

       
        when(mockReservationDAO.addReservation(any(Reservation.class))).thenReturn(true);

        
        boolean result = reservationService.bookTable(name, numberOfPeople, date, time);

        
        assertTrue(result); 

        
        verify(mockReservationDAO, times(1)).addReservation(any(Reservation.class));
    }
}
