package com.abc.service;
import com.abc.dao.ReportRequestDAO;
import com.abc.model.ReportRequest;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import java.sql.SQLException;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.mockito.Mockito.doThrow;
import static org.mockito.Mockito.when;

public class ReportRequestServiceTest {

    private ReportRequestService reportRequestService;
    private ReportRequestDAO reportRequestDAOMock;

    @BeforeEach
    public void setUp() {
        reportRequestDAOMock = Mockito.mock(ReportRequestDAO.class);
        reportRequestService = new ReportRequestService(reportRequestDAOMock);
    }

    @Test
    public void testAddReportRequestSuccess() throws SQLException {
        
        ReportRequest request = new ReportRequest();
        request.setReportType("sales");
        request.setStartDate(java.sql.Date.valueOf("2024-01-01"));
        request.setEndDate(java.sql.Date.valueOf("2024-01-31"));

        
        Mockito.doNothing().when(reportRequestDAOMock).addReportRequest(request);

       
        boolean result = reportRequestService.addReportRequest(request);

        
        assertTrue(result, "Report request should be added successfully.");
    }

    @Test
    public void testAddReportRequestFailure() throws SQLException {
        
        ReportRequest request = new ReportRequest();
        request.setReportType("inventory");
        request.setStartDate(java.sql.Date.valueOf("2024-02-01"));
        request.setEndDate(java.sql.Date.valueOf("2024-02-28"));

        
        doThrow(new SQLException("Database error")).when(reportRequestDAOMock).addReportRequest(request);

       
        boolean result = reportRequestService.addReportRequest(request);

        
        assertFalse(result, "Report request should not be added.");
    }
}
