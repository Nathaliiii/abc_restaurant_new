<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reservation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/Resrvebackground.jpg'); 
            background-size: cover;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .reservation-wrapper {
            display: flex;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            width: 800px;
            height: 500px;
        }
        .image-section {
            flex: 1;
        }
        .image-section img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .form-section {
            flex: 1;
            padding: 30px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            background-color: rgba(255, 255, 255, 0.9);
        }
        .form-section h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group input, .form-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .submit-btn, .back-home-btn {
            background-color: #8bc34a;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            width: 100%;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
        }
        .submit-btn:hover, .back-home-btn:hover {
            background-color: #7ab22e;
        }
    </style>
</head>
<body>

<div class="reservation-wrapper">
    <div class="image-section">
        <img src="images/Reservation.jpg" alt="Reservation Image">
    </div>
    
    <div class="form-section">
        <h2>Book a Table</h2>
        <form action="reserve" method="post">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="people">Number of People</label>
                <select id="people" name="people">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                </select>
            </div>
            <div class="form-group">
                <label for="date">Date</label>
                <input type="date" id="date" name="date" required>
            </div>
            <div class="form-group">
                <label for="time">Time</label>
                <input type="time" id="time" name="time" required>
            </div>
            <button type="submit" class="submit-btn">Book Now</button>
            <button type="button" class="back-home-btn" onclick="window.location.href='Home.jsp'">Back to Home</button>
        </form>

        <% 
            String message = (String) request.getAttribute("message");
            if (message != null) {
        %>
            <p><%= message %></p>
        <% 
            } 
        %>
    </div>
</div>

</body>
</html>
