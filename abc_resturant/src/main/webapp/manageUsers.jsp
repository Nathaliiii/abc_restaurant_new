<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Users</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('images/adminmanageuserbg.jpeg'); 
            background-size: cover;
            background-position: center;
            height: 100vh;
        }
        .container {
            width: 70%;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            font-size: 14px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f4f4f4;
        }
        .form-container {
            margin-top: 20px;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: #f9f9f9;
            max-width: 350px;
            margin: 0 auto;
        }
        .form-container label {
            display: block;
            margin-bottom: 8px;
        }
        .form-container input[type="text"], 
        .form-container input[type="password"], 
        .form-container select {
            width: calc(100% - 16px);
            padding: 6px;
            margin-bottom: 8px;
            font-size: 14px;
        }
        .form-container input[type="submit"] {
            padding: 8px;
            background-color: lightgreen;
            border: none;
            cursor: pointer;
            font-size: 14px;
        }
        .form-container input[type="submit"]:hover {
            background-color: darkgreen;
            color: white;
        }
        .action-buttons {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
        .action-buttons a {
            margin: 0 8px;
            padding: 8px 16px;
            background-color: lightblue;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            font-size: 14px;
            display: inline-block;
            text-align: center;
        }
        .action-buttons a:hover {
            background-color: deepskyblue;
        }
        .btn {
            padding: 8px 16px;
            background-color: lightblue;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            text-align: center;
        }
        .btn:hover {
            background-color: deepskyblue;
        }
        .btn.delete {
            background-color: lightcoral;
        }
        .btn.delete:hover {
            background-color: darkred;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Manage Users</h2>

        <!-- Display Users Table -->
        <table>
            <thead>
                <tr>
                    <th>Username</th>
                    <th>Role</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="user" items="${userList}">
                    <tr>
                        <td>${user.username}</td>
                        <td>${user.role}</td>
                        <td>
                            <a href="editUser.jsp?username=${user.username}" class="btn">Edit</a>
                            <form action="deleteUserServlet" method="post" style="display:inline;">
                                <input type="hidden" name="username" value="${user.username}">
                                <input type="submit" value="Delete" class="btn delete">
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <!-- Add User Form -->
        <div class="form-container">
            <h3>Add New User</h3>
            <form action="addUserServlet" method="post">
                <label for="newUsername">Username:</label>
                <input type="text" id="newUsername" name="username" required>

                <label for="newPassword">Password:</label>
                <input type="password" id="newPassword" name="password" required>

                <label for="newRole">Role:</label>
                <select id="newRole" name="role" required>
                    <option value="admin">Admin</option>
                    <option value="staff">Staff</option>
                </select>

                <input type="submit" value="Add User">
            </form>
        </div>

        <!-- Action Buttons -->
        <div class="action-buttons">
            <a href="AdminDashboard.jsp" class="btn">Back to Dashboard</a>
        </div>
    </div>
</body>
</html>
