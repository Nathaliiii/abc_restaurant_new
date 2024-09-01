package com.abc.controller;

import com.abc.dao.DBConnector;
import com.abc.dao.ReportRequestDAO;
import com.abc.model.ReportRequest;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;

@WebServlet("/GenerateReportServlet")
public class GenerateReportServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String reportType = request.getParameter("reportType");
        Date startDate = Date.valueOf(request.getParameter("startDate"));
        Date endDate = Date.valueOf(request.getParameter("endDate"));

        ReportRequest reportRequest = new ReportRequest();
        reportRequest.setReportType(reportType);
        reportRequest.setStartDate(startDate);
        reportRequest.setEndDate(endDate);

        try (Connection connection = DBConnector.getConnection()) {
            ReportRequestDAO dao = new ReportRequestDAO(connection);
            dao.addReportRequest(reportRequest);
            request.setAttribute("status", "success");
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("status", "error");
        }
        
        request.getRequestDispatcher("generateReports.jsp").forward(request, response);
    }
}
