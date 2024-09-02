package com.abc.service;

import com.abc.dao.ReportRequestDAO;
import com.abc.model.ReportRequest;

import java.sql.Connection;
import java.sql.SQLException;

public class ReportRequestService {

    private ReportRequestDAO reportRequestDAO;

    // Constructor with ReportRequestDAO parameter
    public ReportRequestService(ReportRequestDAO reportRequestDAO) {
        this.reportRequestDAO = reportRequestDAO;
    }

    // Method to add a report request
    public boolean addReportRequest(ReportRequest request) {
        try {
            reportRequestDAO.addReportRequest(request);
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
