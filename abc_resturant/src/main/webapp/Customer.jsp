<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer_Dashboard - ABC Restaurant</title>
    <style>
        /* Reset basic styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body styling with background image */
        body {
            font-family: 'Arial', sans-serif;
            background-image: url('images/restaurant-customer-bg.jpg'); /* Replace with your image path */
            background-size: cover;
            background-position: center;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            color: #333;
        }

        /* Main container with padding and background */
        .container {
            background-color: rgba(255, 255, 255, 0.8); /* White background with transparency */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        /* Headings styling */
        h1 {
            font-size: 3rem;
            color: #d35400; /* Vibrant orange for heading */
            margin-bottom: 20px;
        }

        h2 {
            font-size: 2rem;
            color: #2980b9; /* Bright blue for subheadings */
            margin-bottom: 15px;
        }

        /* Styling the list */
        ul {
            list-style-type: none;
            margin-bottom: 30px;
        }

        ul li {
            margin: 15px 0; /* Add space between the list items */
        }

        ul li a {
            text-decoration: none;
            color: #fff;
            background-color: #27ae60; /* Green color */
            padding: 15px 25px;
            border-radius: 5px;
            font-size: 1.2rem;
            display: inline-block; /* Ensure the buttons behave as blocks */
            margin: 10px 0; /* Add margin between the buttons */
            transition: background-color 0.3s ease;
        }

        /* Hover effect for links */
        ul li a:hover {
            background-color: #2ecc71; /* Lighter green on hover */
        }

        /* Logout link */
        a[href="LogoutServlet"] {
            display: inline-block;
            margin-top: 20px;
            background-color: #e74c3c; /* Red for logout */
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 1rem;
            transition: background-color 0.3s ease;
        }

        a[href="LogoutServlet"]:hover {
            background-color: #c0392b; /* Darker red on hover */
        }

        /* Responsive design for mobile */
        @media (max-width: 600px) {
            .container {
                padding: 20px;
            }

            h1 {
                font-size: 2rem;
            }

            h2 {
                font-size: 1.5rem;
            }

            ul li a {
                padding: 10px 15px;
                font-size: 1rem;
            }

            a[href="LogoutServlet"] {
                padding: 8px 15px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Customer_Dashboard</h1>

        <h2>Available Services</h2>
        <ul>
            <li><a href="ViewServices.jsp">View All Services</a></li>
            <li><a href="Reservation.jsp">Make a Reservation</a></li>
            <li><a href="SubmitQuery.jsp">Submit a Query</a></li>
        </ul>

        <a href="LogoutServlet">Logout</a>
    </div>
</body>
</html>
