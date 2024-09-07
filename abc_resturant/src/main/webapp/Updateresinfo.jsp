<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ABC Restaurant Add Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #001f3f; 
            margin: 0;
            padding: 0;
        }
        .navbar {
            background-color: #333;
            color: white;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .navbar .date, .navbar .restaurant, .navbar .welcome {
            margin: 0 15px;
        }
        .container {
            width: 80%;
            margin: 20px auto;
            background-color: #add8e6; 
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #fff; 
        }
        .form-section {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }
        .form-section > div {
            width: 48%;
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }
        input[type="text"], textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        textarea {
            resize: vertical;
            height: 80px;
        }
        .submit-button {
            text-align: center;
        }
        .submit-button button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .submit-button button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<header>
    <nav class="navbar">
        <div class="navbar-left">
            <span class="date">25th August 2024</span>
        </div>
        <div class="navbar-center">
            <span class="restaurant">ABC Restaurant</span>
        </div>
        <div class="navbar-right">
            <span class="notification-icon">📧</span>
            <span class="bell-icon">🔔</span>
            <span class="welcome">Welcome</span>
        </div>
    </nav>
</header>

<div class="container">
    <h1>ABC Restaurant Add Information</h1>

    <!-- Update form action to point to AddRestaurantServlet -->
    <form action="AddRestaurantServlet" method="post">
        <div class="form-section">
            <div>
                <label>Email Address:</label>
                <input type="text" name="email" placeholder="Enter email address" />
            </div>

            <div>
                <label>Website Link:</label>
                <input type="text" name="websiteLink" placeholder="Enter website link" />
            </div>

            <div>
                <label>Operating Hours:</label>
                <input type="text" name="operatingHours" placeholder="Enter operating hours" />
            </div>

            <div>
                <label>Seating Capacity:</label>
                <input type="text" name="seatingCapacity" placeholder="Enter seating capacity" />
            </div>

            <div>
                <label>Delivery Partners:</label>
                <input type="text" name="deliveryPartners" placeholder="Enter delivery partners" />
            </div>

            <div>
                <label>Restaurant Description:</label>
                <textarea name="restaurantDescription" placeholder="Enter restaurant description"></textarea>
            </div>
        </div>

        <div class="submit-button">
            <!-- Update button text to "Add Restaurant Info" -->
            <button type="submit">Add Restaurant Info</button>
        </div>
    </form>
</div>

</body>
</html>
