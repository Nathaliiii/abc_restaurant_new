package com.abc.service;

import com.abc.dao.ContactUsDAO;
import com.abc.model.ContactUs;

import java.sql.SQLException;

public class ContactUsService {
    private ContactUsDAO contactUsDAO = new ContactUsDAO();

    public void addContactUs(ContactUs contactUs) throws SQLException {
        contactUsDAO.insertContactUs(contactUs);
    }

    public ContactUs getContactUsById(int id) throws SQLException {
        return contactUsDAO.getContactUsById(id);
    }
}
