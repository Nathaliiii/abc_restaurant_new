<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Staff Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        .container {
            display: flex;
            justify-content: space-between;
            padding: 20px;
        }

        .sidebar {
            width: 20%;
            background-color: #d0f0c0; 
            padding: 20px;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
        }

        .sidebar a {
            display: block;
            margin: 20px 0; 
            padding: 15px; 
            text-decoration: none;
            color: white;
            background-color: #006400; 
            border-radius: 8px; 
            text-align: center;
        }

        .sidebar a:hover {
            background-color: #004d00; 
        }

        .sidebar img {
            width: 100%; /* Adjust as needed */
            height: auto;
            border-radius: 5px;
            margin-top: 20px;
        }

        .content {
            width: 55%;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
        }

        .welcome-section {
            text-align: center;
        }

        .welcome-section h1 {
            color: #006400; /* Dark Green */
        }

        .welcome-section p {
            margin-top: 15px;
            font-size: 16px;
            color: #333;
        }

        .image-container {
            display: flex;
            justify-content: space-around;
            margin-top: 30px;
        }

        .image-container img {
            width: 400px; /* Larger Staff Image */
            height: 400px;
            object-fit: cover;
            border-radius: 5px;
        }

        .right-panel {
            width: 20%;
            padding: 20px;
            background-color: #d0f0c0; /* Light Green */
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .right-panel div {
            margin: 20px 0;
            background-color: #006400; /* Dark Green */
            padding: 10px;
            border-radius: 5px;
            color: white;
        }

        .right-panel img {
            width: 100%;
            height: auto;
            border-radius: 5px;
        }
    </style>
    <script>
        function logOut() {
            alert("You have logged out successfully.");
            window.location.href = 'AdminStafflogin.jsp'; 
        }
    </script>
</head>
<body>

<div class="container">
   
    <div class="sidebar">
        <a href="manageReservations.jsp">Manage Reservations</a>
        <a href="respondQueries.jsp">Respond to Queries</a>
        <a href="ProcessPayment.jsp">Process Payments</a>
        <a href="javascript:void(0);" onclick="logOut();">Logout</a> 

        
        <img src="images/staffdashboard.jpg" alt="Sidebar Image"> 
    </div>

    
    <div class="content">
        
        <div class="welcome-section">
            <h1>Welcome!</h1>
            <p>This is the Staff Dashboard. Here you can manage reservations, respond to customer queries, and process payments. Your main hub for efficient operations and customer service!</p>
        </div>

        <!-- Staff Image Section -->
        <div class="image-container">
            <div>
                <img src="images/staffdash.jpg" alt="Staff Image">
            </div>
        </div>
    </div>

    <!-- Right Panel (Total Reservations, Pending Queries, Calendar) -->
    <div class="right-panel">
        <div>Total Reservations: <strong>50</strong></div>
        <div>Pending Queries: <strong>10</strong></div>
        <div>
            <img src="images/calendar.jpg" alt="Orders Calendar Image">
            <p>Orders Calendar Image</p>
        </div>
    </div>
</div>

</body>
</html>
