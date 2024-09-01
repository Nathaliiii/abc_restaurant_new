<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant</title>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Ramaraja&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Merriweather:wght@400;700&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('images/HomeBackground.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            background-repeat: no-repeat;
        }

        /* Header styles */
        header {
            background-color: #FFC300; /* Bumblebee Yellow */
            padding: 10px 0;
            text-align: center;
        }

        header .menu {
            margin-bottom: 10px;
        }

        header .menu a {
            color: #000000;
            text-decoration: none;
            padding: 10px 15px;
            margin: 0 8px;
            display: inline-block;
        }

        header .menu a:hover {
            background-color: #FFD700;
        }

        header nav {
            margin-top: 10px;
        }

        header nav a {
            color: #000000;
            text-decoration: none;
            padding: 14px 20px;
            margin: 0 10px;
            display: inline-block;
        }

        header nav a:hover {
            background-color: #FFD700;
        }

        /* Main content styles */
        .container {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 40px 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 8px;
        }

        .text-content {
            flex: 1;
            padding-right: 20px;
        }

        .text-content h1 {
            font-size: 2.5em;
            color: #000000;
            font-family: 'Ramaraja', serif; /* Ramaraja font */
        }

        .text-content p {
            font-size: 1.5em;
            margin: 20px 0;
            color: #654321; /* Dark Brown Color */
            font-family: 'Lato', serif; /* Times New Roman Font */
            font-style: none;
            font-weight: bold;
        }

        .buttons {
            margin: 30px 0;
        }

        .buttons a {
            background-color: #28a745;
            color: #fff;
            padding: 10px 20px;
            text-decoration: none;
            margin: 0 10px;
            border-radius: 5px;
        }

        .buttons a:hover {
            background-color: #218838;
        }

        .image-content {
            flex: 1;
            padding-left: 50px;
        }

        .image-content img {
            width: 100%;
            max-width: 400px;
            height: auto;
        }

        /* Offer section styles */
        .offer {
            background-color: #f0ad4e;
            color: #fff;
            padding: 15px 0;
            text-align: center;
            font-size: 1.2em;
            margin-top: 40px;
        }

        /* Footer styles */
        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px;
            margin-top: 20px;
        }
    </style>
</head>
<body>

    <header>
        
        <h1>ABC Restaurant</h1>
        <nav>
            <a href="signup.jsp">Sign Up</a>
            <a href="login.jsp">Login</a>
            <a href="Services.jsp">Services</a>           
            <a href="Menu.jsp">Menu</a>        
            <a href="facilities.jsp">Facilities</a>
            <a href="Contactus.jsp">Contact Us</a>
        </nav>
    </header>

    <div class="container">
        <div class="text-content">
            <h1>Enjoy Your Healthy Delicious Food!!</h1>
            <p>Welcome to ABC Restaurant, where passion for flavor meets the art of fine dining. 
            Indulge in a culinary journey with dishes crafted from the freshest ingredients, 
            served in a cozy and elegant setting. Whether you're looking for a casual meal or 
            a special dining experience, we offer something for every palate. 
            Join us to savor the finest in local and international cuisine, 
            all while enjoying impeccable hospitality that makes every visit unforgettable.</p>

            <div class="buttons">
                <a href="Explore more.jsp">Explore More</a>
            </div>
        </div>

        <div class="image-content">
            <img src="images/Home.jpg" alt="Restaurant Homepage Image">
        </div>
    </div>

    <div class="offer">
        <p>Exclusive Offer: Savor the Flavors with 20% Off Your First Order! Join us today and treat yourself 
        to an unforgettable dining experience at ABC Restaurant. 
        Don't miss out—this delicious deal won't last forever!</p>
    </div>

    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>

</body>
</html>
