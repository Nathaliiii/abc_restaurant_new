package com.abc.dao;

import com.abc.model.ReportRequest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ReportRequestDAO {

    private Connection connection;

    public ReportRequestDAO(Connection connection) {
        this.connection = connection;
    }

    public void addReportRequest(ReportRequest request) throws SQLException {
        String sql = "INSERT INTO ReportRequests (report_type, start_date, end_date) VALUES (?, ?, ?)";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, request.getReportType());
            stmt.setDate(2, request.getStartDate());
            stmt.setDate(3, request.getEndDate());
            stmt.executeUpdate();
        }
    }
}
