package com.abc.model;

import java.sql.Date;

public class ReportRequest {
    private int id;
    private String reportType;
    private Date startDate;
    private Date endDate;
    private java.sql.Timestamp createdAt;

    // Getters and setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public String getReportType() { return reportType; }
    public void setReportType(String reportType) { this.reportType = reportType; }
    public Date getStartDate() { return startDate; }
    public void setStartDate(Date startDate) { this.startDate = startDate; }
    public Date getEndDate() { return endDate; }
    public void setEndDate(Date endDate) { this.endDate = endDate; }
    public java.sql.Timestamp getCreatedAt() { return createdAt; }
    public void setCreatedAt(java.sql.Timestamp createdAt) { this.createdAt = createdAt; }
}
