<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
        
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/contactbackground.jpg'); 
            background-size: cover; 
            background-position: center; 
            margin: 0;
            padding: 0;
            color: #333;
        }
        
        .container {
            max-width: 900px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #4CAF50;
        }

        .contact-details {
            display: flex;
            justify-content: space-between;
        }

        .contact-info {
            width: 100%;
        }

        .contact-info label {
            color: #333;
            font-weight: bold;
            margin-bottom: 10px;
            display: block;
        }

        .contact-info input[type="text"], .contact-info input[type="email"], .contact-info textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .contact-info input[type="submit"] {
            background-color: lightgreen;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .contact-info input[type="submit"]:hover {
            background-color: #45a049;
        }

        .contact-details img {
            width: 100%;
            height: auto;
        }

        .contact-info, .restaurant-info {
            margin-bottom: 20px;
        }

        .restaurant-info {
            text-align: left;
            font-size: 16px;
        }

        .restaurant-info p {
            margin: 10px 0;
        }

        .branch-locations {
            margin-top: 30px;
        }

        .branch {
            margin-bottom: 20px;
        }

        .branch h4 {
            margin-bottom: 5px;
            color: #4CAF50;
        }

        .branch p {
            margin: 0;
        }

        .customer-reviews {
            margin-top: 50px;
            background-color: #f1f1f1;
            padding: 20px;
            border-radius: 8px;
        }

        .review {
            margin-bottom: 20px;
        }

        .review p {
            font-style: italic;
        }

        .reviewer-name {
            font-weight: bold;
        }

        .back-home-btn {
            background-color: #4CAF50; /* light green */
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            cursor: pointer;
            font-size: 16px;
            margin-top: 20px;
        }

        .back-home-btn:hover {
            background-color: #45a049; /* darker shade of green */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Contact Us</h2>

        <!-- Contact Form -->
        <div class="contact-info">
            <form action="contactus" method="post"> <!-- Updated action URL -->

                <label for="name">Your Name:</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Your Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="message">Your Message:</label>
                <textarea id="message" name="message" rows="5" required></textarea>

                <input type="submit" value="Submit">
            </form>

            <div class="message">
                <% 
                    String status = request.getParameter("status");
                    if (status != null) {
                        if (status.equals("success")) {
                            out.println("<p style='color: green;'>Thank you! Your message has been sent.</p>");
                        } else if (status.equals("failure")) {
                            out.println("<p style='color: red;'>Sorry, there was an error sending your message. Please try again.</p>");
                        }
                    }
                %>
            </div>
        </div>

        <!-- Contact Information -->
        <div class="restaurant-info">
            <p>Phone Number: 0114567485</p>
            <p>Email: ABC_restaurant1@gmail.com</p>
        </div>

        <!-- Branch Locations -->
        <div class="branch-locations">
            <div class="branch">
                <h4>Matara Branch</h4>
                <p>Located in the heart of Matara, this branch offers a cozy atmosphere with a wide selection of our finest dishes.</p>
            </div>

            <div class="branch">
                <h4>Kandy Branch</h4>
                <p>Our Kandy branch provides a scenic view of the city with a menu featuring both local and international cuisines.</p>
            </div>

            <div class="branch">
                <h4>Colombo Branch</h4>
                <p>The Colombo branch is our flagship location, offering an elegant dining experience with a full range of our signature dishes.</p>
            </div>
        </div>

        <!-- Customer Reviews Section -->
        <div class="customer-reviews">
            <h3>Customer Reviews</h3>

            <div class="review">
                <p>"The service was outstanding and the food was delicious! Highly recommend this restaurant."</p>
                <span class="reviewer-name">- Sarah P.</span>
            </div>

            <div class="review">
                <p>"I loved the ambiance and the staff were very friendly. I'll definitely come back!"</p>
                <span class="reviewer-name">- John M.</span>
            </div>

            <div class="review">
                <p>"A perfect place for a family dinner. The staff made sure we had a great experience!"</p>
                <span class="reviewer-name">- Emily W.</span>
            </div>
        </div>

        <!-- Back to Home Button -->
        <a href="Home.jsp" class="back-home-btn">Back to Home</a>
    </div>
</body>
</html>
