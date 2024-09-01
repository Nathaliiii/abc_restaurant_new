<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Orders Report</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h1 {
            text-align: center;
            color: #007BFF; /* Blue */
        }

        .report-details {
            margin: 20px 0;
            text-align: center;
            font-size: 18px;
            color: #555;
        }

        .report-details span {
            font-weight: bold;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: center;
        }

        th {
            background-color: #007BFF; /* Blue */
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .back-link {
            text-align: center;
            margin-top: 20px;
        }

        .back-link a {
            text-decoration: none;
            color: white;
            background-color: #007BFF; /* Blue */
            padding: 10px 20px;
            border-radius: 5px;
        }

        .back-link a:hover {
            background-color: #0056b3; /* Darker Blue */
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Orders Report</h1>

    <!-- Displaying Start Date and End Date -->
    <div class="report-details">
        
    </div>

    <!-- Orders Report Table -->
    <table>
        <thead>
            <tr>
                <th>Order ID</th>
                <th>Customer Name</th>
                <th>Order Date</th>
                <th>Total Amount</th>
            </tr>
        </thead>
        <tbody>
            <!-- Sample Data for Demonstration -->
            <tr>
                <td>101</td>
                <td>Sam Perera </td>
                <td>2024-08-01</td>
                <td>Rs.2500.00</td>
            </tr>
            <tr>
                <td>102</td>
                <td>Kamala Perera</td>
                <td>2024-08-05</td>
                <td>Rs.1800.00</td>
            </tr>
            <tr>
                <td>103</td>
                <td>Waruni Silva</td>
                <td>2024-08-07</td>
                <td>Rs.3000.00</td>
            </tr>
            <!-- Add more rows as needed -->
        </tbody>
    </table>

    <!-- Back to Dashboard Link -->
    <div class="back-link">
        <a href="AdminDashboard.jsp">Back to Dashboard</a>
    </div>
</div>

</body>
</html>
