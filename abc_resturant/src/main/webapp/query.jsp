<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Respond Query Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 50%;
            margin: auto;
            background-color: white;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
            border-radius: 8px;
        }
        h1 {
            text-align: center;
            color: #4CAF50;
        }
        input, textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
        .back-btn {
            display: block;
            margin-top: 20px;
            text-align: center;
        }
        .back-btn a {
            color: #4CAF50;
            text-decoration: none;
        }
        .back-btn a:hover {
            text-decoration: underline;
        }
        .success-message {
            text-align: center;
            color: green;
            font-weight: bold;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Respond to Query</h1>

    <!-- Success message after processing -->
    <% 
        String success = request.getParameter("success");
        if ("true".equals(success)) {
    %>
        <div class="success-message">
            Your query has been submitted successfully!
        </div>
    <% } %>


    <form action="SubmitQueryServlet" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
        
        <label for="subject">Subject:</label>
        <input type="text" id="subject" name="subject" required>
        
        <label for="message">Message:</label>
        <textarea id="message" name="message" rows="5" required></textarea>
        
        <button type="submit">Respond Query</button>
    </form>
    
    <div class="back-btn">
        <a href="respondQueries.jsp">Back to Respond Queries</a>
    </div>
</div>



</body>
</html>
