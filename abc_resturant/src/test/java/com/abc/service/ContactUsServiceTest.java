package com.abc.service;

import com.abc.dao.ContactUsDAO;
import com.abc.model.ContactUs;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

import java.sql.SQLException;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

public class ContactUsServiceTest {
    private ContactUsDAO contactUsDAO;
    private ContactUsService contactUsService;

    @BeforeEach
    public void setUp() {
        contactUsDAO = Mockito.mock(ContactUsDAO.class);
        contactUsService = new ContactUsService(contactUsDAO);
    }

    @Test
    public void testAddContactUs() throws SQLException {
        ContactUs contactUs = new ContactUs(1, "John Doe", "john@example.com", "Hello World");

        contactUsService.addContactUs(contactUs);

        Mockito.verify(contactUsDAO).insertContactUs(contactUs);
        System.out.println("\033[0;32mTest passed: testAddContactUs\033[0m"); // Output in green color
    }

    @Test
    public void testGetContactUsById() throws SQLException {
        ContactUs contactUs = new ContactUs(1, "John Doe", "john@example.com", "Hello World");
        Mockito.when(contactUsDAO.getContactUsById(1)).thenReturn(contactUs);

        ContactUs result = contactUsService.getContactUsById(1);

        assertEquals(contactUs, result);
        System.out.println("\033[0;32mTest passed: testGetContactUsById\033[0m"); // Output in green color
    }

    @Test
    public void testGetContactUsByIdNotFound() throws SQLException {
        Mockito.when(contactUsDAO.getContactUsById(1)).thenReturn(null);

        ContactUs result = contactUsService.getContactUsById(1);

        assertEquals(null, result);
        System.out.println("\033[0;32mTest passed: testGetContactUsByIdNotFound\033[0m"); // Output in green color
    }
}
