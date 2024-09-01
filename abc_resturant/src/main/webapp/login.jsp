<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url('background.jpg') no-repeat center center fixed; /* Background Image */
            background-size: cover; /* Cover the entire viewport */
            color: #333; /* Default text color */
        }

        nav {
            background-color: #6dbe45; /* Light Green */
            color: #ffff00; /* Yellow */
            padding: 10px;
            position: fixed;
            width: 100%;
            top: 0;
            left: 0;
            display: flex;
            justify-content: center; /* Center items */
            align-items: center;
            box-shadow: 0 2px 4px rgba(0,0,0,0.2);
            z-index: 1000; /* Ensure nav stays on top */
        }

        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            align-items: center;
        }

        nav li {
            margin: 0 10px;
        }

        nav a {
            color: #ffff00; /* Yellow */
            text-decoration: none;
            font-weight: bold;
        }

        .container {
            display: flex;
            margin-top: 60px; /* Space for fixed nav bar */
            justify-content: center;
            align-items: center;
            height: calc(100vh - 60px); /* Full height minus nav bar */
            padding: 20px;
            box-sizing: border-box;
        }

        .left {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding-right: 20px; /* Space between image and form */
        }

        .left img {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        }

        .right {
            flex: 1;
            background-color: rgba(165, 214, 167, 0.8); /* Light Green with opacity */
            color: #004d00; /* Dark Green */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .right h1 {
            margin-top: 0;
            font-size: 24px;
            text-align: center;
        }

        .right p {
            margin: 20px 0;
            font-size: 18px;
        }

        .right a {
            color: #004d00; /* Dark Green */
            text-decoration: underline;
        }

        .right form {
            width: 100%;
            max-width: 400px;
            margin: 0 auto; /* Center form horizontally */
        }

        .right label {
            display: block;
            margin-bottom: 5px;
        }

        .right input {
            width: 100%; /* Full width */
            padding: 10px;
            margin-bottom: 10px;
            border: 2px solid #004d00; /* Dark Green */
            border-radius: 5px;
            box-sizing: border-box;
        }

        .right button {
            width: 100%;
            padding: 10px;
            background-color: #ffff00; /* Yellow */
            color: #004d00; /* Dark Green */
            border: none;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
            font-size: 16px;
            margin-bottom: 10px; /* Space between buttons */
        }

        .right button:hover {
            background-color: #e0e000; /* Lighter Yellow */
        }

        .footer {
            text-align: center;
            margin-top: 20px;
            color: #004d00; /* Dark Green */
        }
    </style>
</head>
<body>
    <nav>
        <ul>
            <!-- Removed Home and Profile links -->
        </ul>
    </nav>
    <div class="container">
        <div class="left">
            <img src="images/Login.jpg" alt="Login Image">
        </div>
        <div class="right">
            <h1>Welcome back!</h1>
            <p>Don't have an account? <a href="signup.jsp">Sign up</a></p>
            <form action="login-action.jsp" method="post">
                <label for="email">Enter your email address:</label>
                <input type="email" id="email" name="email" required>
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
                <button type="submit">Sign In</button>
                <button type="button" onclick="window.location.href='Home.jsp'">Back to Home</button>
                <button type="button" onclick="window.location.href='Explore more.jsp'">Explore More</button>
            </form>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2024 ABC Restaurant</p>
    </div>
</body>
</html>
