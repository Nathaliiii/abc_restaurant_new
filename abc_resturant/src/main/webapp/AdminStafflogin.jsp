<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('images/adminloginbackground.jpg');
            background-size: cover;
            background-position: center;
            height: 100vh;
        }
        .container {
            display: flex;
            height: 100vh;
        }
        .image-section {
            flex: 1;
            background-image: url('images/AdminStafflogin.jpg'); 
            background-size: cover;
            background-position: center;
        }
        .form-section {
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }
        .form-container {
            width: 100%;
            max-width: 400px;
            padding: 20px;
            border: 1px solid #ddd;
            background-color: #fff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"], input[type="password"], select {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: lightgreen;
            border: none;
            cursor: pointer;
            border-radius: 4px;
        }
        input[type="submit"]:hover {
            background-color: darkgreen;
            color: white;
        }
        .error-message {
            color: red;
            margin-bottom: 10px;
        }
        .success-message {
            color: green;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="image-section"></div>
        <div class="form-section">
            <div class="form-container">
                <h2>Login</h2>
                <form action="LoginServlet" method="post">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required>

                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>

                    <label for="role">Role:</label>
                    <select id="role" name="role" required>
                        <option value="admin">Admin</option>
                        <option value="staff">Staff</option>
                    </select>

                    <input type="submit" value="Login">
                </form>
                <div class="error-message">
                    <%
                        String errorMessage = (String) request.getAttribute("errorMessage");
                        if (errorMessage != null) {
                            out.print(errorMessage);
                        }
                    %>
                </div>
                <div class="success-message">
                    <%
                        String successMessage = (String) request.getAttribute("successMessage");
                        if (successMessage != null) {
                            out.print(successMessage);
                        }
                    %>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
