<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Our Services</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/servicesbackground.jpg'); /* Add your background image */
            background-size: cover; /* Cover the entire page */
            background-position: center; /* Center the image */
            background-color: #fefaf2; /* Fallback color in case the image doesn't load */
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 1200px;
            margin: 50px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent background for readability */
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: left;
            font-size: 36px;
            color: #4a235a;
        }
        p {
            color: #7d7d7d;
            line-height: 1.6;
        }
        .services {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 30px;
        }
        .service-box {
            background-color: #fff5e5;
            padding: 30px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            flex: 1 1 30%;
            position: relative;
        }
        .service-box:hover {
            background-color: #e5ffe5;
        }
        .service-box h3 {
            margin-top: 15px;
            font-size: 20px;
            color: #3e3e3e;
        }
        .service-box p {
            font-size: 14px;
            margin: 10px 0;
        }
        .service-box img {
            width: 80px;
            height: auto;
        }
        /* Icons */
        .service-icon {
            font-size: 60px;
            color: #27ae60;
        }
        .line {
            width: 40px;
            height: 5px;
            background-color: #27ae60;
            position: absolute;
            left: 20px;
            top: 0;
        }
        .button-container {
            margin-top: 30px;
            text-align: center;
        }
        .button {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px;
            font-size: 16px;
            text-decoration: none;
            color: #fff;
            background-color: #27ae60;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .button:hover {
            background-color: #1e8e40;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Our Services</h1>
    <p>We provide a range of services to ensure you have a seamless experience. Explore our unique offerings below.</p>

    <div class="services">
        <div class="service-box">
            <div class="line"></div>
            <i class="service-icon">&#128101;</i>
            <h3>Advanced Table Booking</h3>
            <p>Book your table in advance to avoid waiting times and enjoy your meal in comfort.</p>
        </div>

        <div class="service-box">
            <div class="line"></div>
            <i class="service-icon">&#127869;</i>
            <h3>Food for Special Offers 24/7</h3>
            <p>Enjoy Special Offers food delivery services around the clock, with our exclusive offers.</p>
        </div>

        <div class="service-box">
            <div class="line"></div>
            <i class="service-icon">&#128758;</i>
            <h3>Free Home Delivery</h3>
            <p>Get your favorite meals delivered right to your doorstep with no extra charges.</p>
        </div>
    </div>

    <div class="button-container">
        <a href="Contactus.jsp" class="button">Contact Us</a>
        <a href="Home.jsp" class="button">Back to Home</a>
    </div>
</div>

</body>
</html>
