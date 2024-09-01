package com.abc.service;

import com.abc.dao.ContactUsDAO;
import com.abc.model.ContactUs;
import java.sql.SQLException;

public class ContactUsService {
    private ContactUsDAO contactUsDAO;

    // Constructor for dependency injection
    public ContactUsService(ContactUsDAO contactUsDAO) {
        this.contactUsDAO = contactUsDAO;
    }

    // No-argument constructor
    public ContactUsService() {
        // Default constructor
    }

    // Setter for dependency injection
    public void setContactUsDAO(ContactUsDAO contactUsDAO) {
        this.contactUsDAO = contactUsDAO;
    }

    public void addContactUs(ContactUs contactUs) throws SQLException {
        contactUsDAO.insertContactUs(contactUs);
    }

    public ContactUs getContactUsById(int id) throws SQLException {
        return contactUsDAO.getContactUsById(id);
    }
}
