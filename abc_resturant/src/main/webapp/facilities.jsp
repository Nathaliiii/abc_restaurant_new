<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Facilities - ABC Restaurant</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #ffffe0; 
            margin: 0;
            padding: 0;
            color: #333;
        }
        .header {
            background: #343a40;
            color: #ffffff;
            padding: 20px 0;
            text-align: center;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .header h1 {
            margin: 0;
            font-size: 2.5em;
            letter-spacing: 1px;
        }
        .container {
            width: 85%;
            margin: auto;
            overflow: hidden;
        }
        .content {
            background: #ffffff;
            padding: 30px;
            margin-top: 20px;
            border-radius: 12px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 900px; /* Restrict width of the content */
            margin: 20px auto; /* Center the content */
        }
        .content h2 {
            font-size: 2.5em;
            margin-bottom: 20px;
            color: #007bff;
        }
        .facilities-list {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            justify-content: center;
        }
        .facility {
            background: #f8f9fa;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            overflow: hidden;
            text-align: center;
            position: relative;
        }
        .facility:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .facility-icon {
            font-size: 3em;
            color: #007bff;
            margin-bottom: 15px;
        }
        .facility-description {
            color: #666;
        }
        .facility-description h3 {
            margin: 0;
            font-size: 1.5em;
            color: #333;
        }
        .back-button {
            margin-top: 30px;
        }
        .back-button a {
            text-decoration: none;
            color: #ffffff;
            background: #007bff;
            padding: 15px 25px;
            border-radius: 6px;
            font-size: 1.2em;
            transition: background 0.3s ease, transform 0.3s ease;
        }
        .back-button a:hover {
            background: #0056b3;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="container">
            <h1>ABC Restaurant</h1>
        </div>
    </div>
    <div class="container">
        <div class="content">
            <h2>Our Facilities</h2>
            <div class="facilities-list">
                <div class="facility">
                    <div class="facility-icon">🍽️</div>
                    <div class="facility-description">
                        <h3>Cozy Dining Area</h3>
                        <p>Comfortable seating for family gatherings and intimate dinners.</p>
                    </div>
                </div>
                <div class="facility">
                    <div class="facility-icon">🎉</div>
                    <div class="facility-description">
                        <h3>Private Event Rooms</h3>
                        <p>Elegant rooms for special events with all necessary amenities.</p>
                    </div>
                </div>
                <div class="facility">
                    <div class="facility-icon">🌳</div>
                    <div class="facility-description">
                        <h3>Outdoor Seating</h3>
                        <p>Dining under the stars with fresh air and scenic views.</p>
                    </div>
                </div>
                <div class="facility">
                    <div class="facility-icon">📶</div>
                    <div class="facility-description">
                        <h3>Free Wi-Fi</h3>
                        <p>Complimentary high-speed internet throughout the restaurant.</p>
                    </div>
                </div>
                <div class="facility">
                    <div class="facility-icon">♿</div>
                    <div class="facility-description">
                        <h3>Accessible Restrooms</h3>
                        <p>Restrooms designed for convenience and comfort for all guests.</p>
                    </div>
                </div>
                <div class="facility">
                    <div class="facility-icon">🚗</div>
                    <div class="facility-description">
                        <h3>Parking Available</h3>
                        <p>Ample parking space right outside the restaurant.</p>
                    </div>
                </div>
            </div>

            <div class="back-button">
                <a href="Home.jsp">Back to Home</a>
            </div>
        </div>
    </div>
</body>
</html>
