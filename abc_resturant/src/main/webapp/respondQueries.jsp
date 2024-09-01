<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Respond to Queries</title>
    <link rel="stylesheet" type="text/css" href="styles.css"> <!-- Link to your CSS file -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            padding: 20px;
        }

        h1 {
            color: #006400; /* Dark Green */
        }

        .query-table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px 0;
        }

        .query-table th, .query-table td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        .query-table th {
            background-color: #d0f0c0; /* Light Green */
            color: #006400; /* Dark Green */
        }

        .query-table tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .query-table tr:hover {
            background-color: #ddd;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px;
            text-decoration: none;
            color: #fff;
            background-color: #006400; /* Dark Green */
            border-radius: 5px;
            text-align: center;
        }

        .button:hover {
            background-color: #004d00; /* Darker Green */
        }

        .image-container {
            margin-top: 20px;
            text-align: center;
        }

        .image-container img {
            max-width: 400px; /* Set the maximum width */
            height: auto; /* Maintain aspect ratio */
            border-radius: 5px;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Respond to Queries</h1>
    
    <!-- Sample Table for Queries -->
    <table class="query-table">
        <thead>
            <tr>
                <th>Query ID</th>
                <th>Customer Name</th>
                <th>Query</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>001</td>
                <td>Emily Perera</td>
                <td>Special menu request</td>
                <td>Pending</td>
                <td><a href="query.jsp?id=001" class="button">Respond</a></td>
            </tr>
            <tr>
                <td>002</td>
                <td>Michael De Silva</td>
                <td>Table arrangement issue</td>
                <td>In Progress</td>
                <td><a href="query.jsp?id=002" class="button">Respond</a></td>
            </tr><tr>
            
                <td>003</td>
                <td>Apsara Silva</td>
                <td>About Outdoor Event Facilities</td>
                <td>Pending</td>
                <td><a href="query.jsp?id=001" class="button">Respond</a></td>
               </tr><tr>
                
                <td>004</td>
                <td>Dewni Peter</td>
                <td>Indoor Event management details</td>
                <td>In progress</td>
                <td><a href="query.jsp?id=001" class="button">Respond</a></td>
            </tr>
            
            
            <!-- Add more rows as needed -->
        </tbody>
    </table>
</div>

<!-- Optional Image -->
<div class="image-container">
    <img src="images/resqueries.jpg" alt="Respond to Queries">
</div>

</body>
</html>
