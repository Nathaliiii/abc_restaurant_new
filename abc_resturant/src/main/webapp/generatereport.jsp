<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Generate Reports</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h1 {
            color: #0066cc; /* Dark Blue */
            text-align: center;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-top: 10px;
            font-weight: bold;
        }

        input[type="text"], input[type="date"], select {
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ddd;
            border-radius: 4px;
            width: 100%;
        }

        button {
            margin-top: 20px;
            padding: 10px;
            border: none;
            border-radius: 4px;
            background-color: #0066cc; /* Dark Blue */
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background-color: #005bb5; /* Darker Blue */
        }

        .back-link {
            margin-top: 20px;
            display: flex;
            justify-content: center;
        }

        .back-link a {
            text-decoration: none;
            color: #ffffff;
            background-color: #0066cc;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
        }

        .back-link a:hover {
            background-color: #005bb5;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Generate Reports</h1>
    <form action="GenerateReportServlet" method="post">
        <label for="reportType">Select Report Type:</label>
        <select id="reportType" name="reportType" required>
            <option value="">--Select--</option>
            <option value="sales">Sales Report</option>
            <option value="inventory">Inventory Report</option>
            <option value="orders">Orders Report</option>
            <!-- Add more report types as needed -->
        </select>

        <label for="startDate">Start Date:</label>
        <input type="date" id="startDate" name="startDate" required>

        <label for="endDate">End Date:</label>
        <input type="date" id="endDate" name="endDate" required>

        <button type="submit">Generate Report</button>
    </form>

    <div class="back-link">
        <a href="AdminDashboard.jsp">Back to Dashboard</a>
    </div>
</div>

</body>
</html>
