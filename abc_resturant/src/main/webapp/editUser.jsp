<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit User</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #d0e6f9; /* Light blue background */
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .container {
            width: 50%;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        label {
            margin-bottom: 8px;
            font-weight: bold;
        }

        select, input[type="submit"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 20px;
        }

        input[type="submit"] {
            background-color: lightgreen;
            border: none;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: darkgreen;
            color: white;
        }

        a {
            display: block;
            color: lightblue;
            text-decoration: none;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #fff;
            margin-top: 20px;
        }

        a:hover {
            background-color: #f0f0f0;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Edit User</h2>
        <%-- Fetch user details using the username parameter --%>
        <%
            String username = request.getParameter("username");
            // Fetch user details from database using the username
            // Example details
            String role = "Admin"; // Example role, replace with actual data
        %>
        <form action="editUserServlet" method="post">
            <input type="hidden" name="username" value="<%= username %>">
            <label for="editRole">Role:</label>
            <select id="editRole" name="role" required>
                <option value="admin" <%= role.equals("Admin") ? "selected" : "" %>>Admin</option>
                <option value="staff" <%= role.equals("Staff") ? "selected" : "" %>>Staff</option>
            </select>
            <input type="submit" value="Update User">
        </form>
        <a href="ManageUsers.jsp">Back to Manage Users</a>
    </div>
</body>
</html>
