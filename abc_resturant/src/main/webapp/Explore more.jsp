<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Explore Our Foods</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #fafafa;
            margin: 0;
            padding: 0;
        }
        .navbar {
            display: flex;
            justify-content: flex-end;
            background-color: #333;
            padding: 10px 20px;
        }
        .navbar a {
            color: #fff;
            text-decoration: none;
            padding: 10px 15px;
            font-size: 18px;
        }
        .container {
            max-width: 1200px;
            margin: 50px auto;
            padding: 20px;
            text-align: center;
        }
        h1 {
            font-size: 36px;
            color: #333;
            margin-bottom: 20px;
        }
        .food-container {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }
        .food-item {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
        }
        .food-item img {
            width: 100%;
            height: auto;
            border-radius: 8px;
        }
        .food-title {
            font-size: 20px;
            color: #333;
            margin: 10px 0;
        }
        .food-description {
            font-size: 16px;
            color: #777;
            margin-bottom: 10px;
        }
        .food-price {
            font-size: 18px;
            color: #28a745;
            margin-bottom: 10px;
        }
        .food-buttons {
            display: flex;
            justify-content: space-between;
            align-items: center; /* Center buttons vertically */
            gap: 10px; /* Space between buttons */
            margin-top: 10px;
        }
        .food-buttons a {
            display: inline-block;
            padding: 10px 15px;
            border-radius: 5px;
            font-size: 14px;
            color: #fff;
            text-decoration: none;
            flex: 1; /* Equal width for buttons */
            text-align: center; /* Center text inside buttons */
        }
        .add-to-cart {
            background-color: #007bff;
        }
        .order-now {
            background-color: #28a745;
        }
    </style>
</head>
<body>

    <!-- Navigation Bar -->
    <div class="navbar">
        <a href="Home.jsp">Home</a>
    </div>

    <!-- Container for Food Items -->
    <div class="container">
        <h1>Explore Our Foods</h1>
        
        <div class="food-container">
            
            <!-- Food 1: Hand Sandwich -->
            <div class="food-item">
                <img src="images/Sandwiches.jpg" alt="Hand Sandwich">
                <div class="food-title">Hand Sandwich</div>
                <div class="food-description">A delicious hand-made sandwich filled with fresh vegetables and grilled chicken.</div>
                <div class="food-price">Rs.350.00</div>
                <div class="food-buttons">
                    <a href="add-to-cart.jsp?item=Hand%20Sandwich&price=350" class="add-to-cart">Add to Cart</a>
                    <a href="Order.jsp?item=Hand%20Sandwich" class="order-now">Order Now</a>
                </div>
            </div>

            <!-- Food 2: Burger -->
            <div class="food-item">
                <img src="images/burger.jpg" alt="Burger">
                <div class="food-title">Handmade Burger</div>
                <div class="food-description">A juicy handmade beef burger with fresh lettuce, tomatoes, and a special sauce.</div>
                <div class="food-price">Rs.600.00</div>
                <div class="food-buttons">
                    <a href="add-to-cart.jsp?item=Handmade%20Burger&price=600" class="add-to-cart">Add to Cart</a>
                    <a href="Order.jsp?item=Handmade%20Burger" class="order-now">Order Now</a>
                </div>
            </div>

            <!-- Food 3: Fries -->
            <div class="food-item">
                <img src="images/Fries.jpg" alt="Fries">
                <div class="food-title">French Fries</div>
                <div class="food-description">Crispy golden French fries, seasoned with a touch of salt and served hot.</div>
                <div class="food-price">Rs.400.00</div>
                <div class="food-buttons">
                    <a href="add-to-cart.jsp?item=French%20Fries&price=400" class="add-to-cart">Add to Cart</a>
                    <a href="Order.jsp?item=French%20Fries" class="order-now">Order Now</a>
                </div>
            </div>

            <!-- Food 4: Rice and Curry -->
            <div class="food-item">
                <img src="images/Rice.jpg" alt="Rice and Curry">
                <div class="food-title">Rice and Curry</div>
                <div class="food-description">Traditional Sri Lankan rice and curry, with a mix of vegetables and spices.</div>
                <div class="food-price">Rs.750.00</div>
                <div class="food-buttons">
                    <a href="add-to-cart.jsp?item=Rice%20and%20Curry&price=750" class="add-to-cart">Add to Cart</a>
                    <a href="Order.jsp?item=Rice%20and%20Curry" class="order-now">Order Now</a>
                </div>
            </div>

            <!-- Food 5: Noodles -->
            <div class="food-item">
                <img src="images/noodles.jpg" alt="Noodles">
                <div class="food-title">Spicy Noodles</div>
                <div class="food-description">A flavorful bowl of spicy noodles mixed with vegetables and a special sauce.</div>
                <div class="food-price">Rs.700.00</div>
                <div class="food-buttons">
                    <a href="add-t-ocart.jsp?item=Spicy%20Noodles&price=700" class="add-to-cart">Add to Cart</a>
                    <a href="Order.jsp?item=Spicy%20Noodles" class="order-now">Order Now</a>
                </div>
            </div>

            <!-- Food 6: Cookies -->
            <div class="food-item">
                <img src="images/cookies.jpg" alt="Cookies">
                <div class="food-title">Chocolate Chip Cookies</div>
                <div class="food-description">Freshly baked chocolate chip cookies with a crispy edge and soft center.</div>
                <div class="food-price">Rs.100.00</div>
                <div class="food-buttons">
                    <a href="add-to-cart.jsp?item=Chocolate%20Chip%20Cookies&price=100" class="add-to-cart">Add to Cart</a>
                    <a href="Order.jsp?item=Chocolate%20Chip%20Cookies" class="order-now">Order Now</a>
                </div>
            </div>

        </div>
    </div>
</body>
</html>
