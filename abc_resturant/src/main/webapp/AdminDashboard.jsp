<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
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
            background-color: #cce7ff; 
            padding: 20px;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
        }

        .sidebar a {
            display: block;
            margin: 20px 0; 
            padding: 15px; 
            text-decoration: none;
            color: white;
            background-color: #0066cc; 
            border-radius: 8px; 
            text-align: center;
        }

        .sidebar a:hover {
            background-color: #005bb5; 
        }

        .sidebar img {
            width: 100%; 
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
            color: #0066cc; /* Dark Blue */
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
            width: 400px; /* Larger Admin Image */
            height: 400px;
            object-fit: cover;
            border-radius: 5px;
        }

        .right-panel {
            width: 20%;
            padding: 20px;
            background-color: #cce7ff; /* Light Blue */
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .right-panel div {
            margin: 20px 0;
            background-color: #0066cc; /* Dark Blue */
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
    <!-- Sidebar -->
    <div class="sidebar">
        <a href="manageUsers.jsp">Manage Users</a>
        <a href="Updateresinfo.jsp">Update Restaurant Information</a>
        <a href="generatereport.jsp">Generate Reports</a>
        <a href="javascript:void(0);" onclick="logOut();">Log Out</a> 

        <!-- Add an Image -->
        <img src="images/ADMIN.jpg" alt="Sidebar Image"> 
    </div>

    <!-- Main Content -->
    <div class="content">
        <!-- Welcome Message -->
        <div class="welcome-section">
            <h1>Hello!</h1>
            <p>Welcome to the Admin Dashboard, where you can efficiently manage users, 
            update restaurant information, generate reports, 
            and keep track of all food orders in real-time. 
            Your centralized hub for seamless restaurant operations!</p>
        </div>

        <!-- Admin Image Section -->
        <div class="image-container">
            <div>
                <img src="images/admindashpic.jpg" alt="Admin Image">
            </div>
        </div>
    </div>

    <!-- Right Panel (Total Orders, Pending Orders, Calendar) -->
    <div class="right-panel">
        <div>Total Food Orders: <strong>100</strong></div>
        <div>Pending Food Orders: <strong>25</strong></div>
        <div>
            <img src="images/Calender2024.jpg" alt="Orders Calendar Image">
            <p>Orders Calendar Image</p>
        </div>
    </div>
</div>

</body>
</html>
