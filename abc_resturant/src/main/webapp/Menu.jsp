<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Our Menu</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: url('images/background menu.jpg') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
        }
        .search-bar {
            width: 100%;
            text-align: center;
            padding: 20px 0;
        }
        .search-bar input {
            width: 40%;
            padding: 10px;
            font-size: 18px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .header {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 10px;
            background-color: rgba(255, 255, 255, 0.8);
            position: fixed;
            width: 100%;
            bottom: 0;
            left: 0;
            z-index: 1000;
        }
        .header a {
            text-decoration: none;
            color: #27ae60;
            font-size: 18px;
            padding: 10px 20px;
            background-color: #fff;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }
        .header a:hover {
            background-color: #27ae60;
            color: #fff;
        }
        .container {
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
        }
        h1 {
            text-align: center;
            font-size: 36px;
            margin-bottom: 40px;
            color: #333;
        }
        .menu-tabs {
            display: flex;
            justify-content: center;
            margin-bottom: 30px;
        }
        .menu-tabs button {
            background-color: transparent;
            border: none;
            padding: 10px 20px;
            margin: 0 10px;
            font-size: 18px;
            color: #888;
            cursor: pointer;
            border-bottom: 3px solid transparent;
            transition: border-color 0.3s, color 0.3s;
        }
        .menu-tabs button:hover,
        .menu-tabs button.active {
            color: #27ae60;
            border-color: #27ae60;
        }
        .menu-section {
            display: none;
        }
        .menu-section.active {
            display: block;
        }
        .menu-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 0;
            border-bottom: 1px solid #ddd;
        }
        .menu-item:last-child {
            border-bottom: none;
        }
        .menu-item h3 {
            font-size: 20px;
            color: #333;
            margin: 0;
        }
        .menu-item p {
            margin: 5px 0 0;
            font-size: 14px;
            color: #777;
        }
        .menu-item span {
            font-size: 18px;
            color: #27ae60;
        }
        .no-result {
            text-align: center;
            color: #777;
            font-size: 18px;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="search-bar">
    <input type="text" id="searchInput" placeholder="Search for food..." onkeyup="searchMenu()">
</div>

<div class="container">
    <h1>Our Menu</h1>

    <div class="menu-tabs">
        <button class="active" onclick="showMenu('entrees')">Entrees</button>
        <button onclick="showMenu('mains')">Mains</button>
        <button onclick="showMenu('sides')">Sides</button>
        <button onclick="showMenu('desserts')">Desserts</button>
    </div>

    <!-- Entrees Section -->
    <div id="entrees" class="menu-section active">
        <div class="menu-item">
            <div>
                <h3>Crispy Calamari Rings</h3>
                <p>Lightly battered calamari, lemon juice, served with a spicy aioli dip.</p>
            </div>
            <span>Rs.800.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Vegitable soup</h3>
                <p>Soup with vegitables and corn</p>
            </div>
            <span>Rs.600.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Chicken soup</h3>
                <p>Creamy chiken soup with vegitables and mint leaves..</p>
            </div>
            <span>Rs.750.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Beef Soup</h3>
                <p>Spicy beef soup with vegitables</p>
            </div>
            <span>Rs.700.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Stuffed Mushrooms</h3>
                <p>Mushroom caps filled with cheese and garlic, baked to perfection.</p>
            </div>
            <span>Rs.650.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Garlic Breadsticks</h3>
                <p>Soft and warm breadsticks topped with garlic butter and herbs.</p>
            </div>
            <span>Rs.300.00</span>
        </div>
    </div>

    <!-- Mains Section -->
    <div id="mains" class="menu-section">
        <div class="menu-item">
            <div>
                <h3>Rice and Curry</h3>
                <p>Served with rice and 3 types of curries.</p>
            </div>
            <span>Rs.900.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Red Rice and curry</h3>
                <p>Served with red rice and 4 types of curries.</p>
            </div>
            <span>Rs.1050.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Chiken Noodles</h3>
                <p>Classic noodles with a rich meat sauce topped with parmesan.</p>
            </div>
            <span>Rs.850.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Classic Burger</h3>
                <p>Burger served with  sauce and roasted potatoes.</p>
            </div>
            <span>Rs.1200.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Vegetarian Lasagna</h3>
                <p>Layered pasta with vegetables, ricotta, and mozzarella.</p>
            </div>
            <span>Rs.800.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Butter Chicken</h3>
                <p>Creamy tomato-based chicken curry served with steamed rice.</p>
            </div>
            <span>Rs.950.00</span>
        </div>
    </div>

    <!-- Sides Section -->
    <div id="sides" class="menu-section">
        <div class="menu-item">
            <div>
                <h3>Seasoned Wedges</h3>
                <p>Golden crispy potato wedges, served with sour cream and sweet chili.</p>
            </div>
            <span>Rs.350.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Garlic Mashed Potatoes</h3>
                <p>Creamy mashed potatoes with roasted garlic and butter.</p>
            </div>
            <span>Rs.400.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Grilled Asparagus</h3>
                <p>Char-grilled asparagus with a squeeze of lemon.</p>
            </div>
            <span>Rs.350.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Vegitable Salad</h3>
                <p>Classic vegitable salad with  parmesan cheese.</p>
            </div>
            <span>Rs.450.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Steamed Broccoli</h3>
                <p>Steamed broccoli tossed with olive oil and sea salt.</p>
            </div>
            <span>Rs.300.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>mushroom with Vegetables</h3>
                <p>Steamed seasonal vegetables with mushroom and olive oil.</p>
            </div>
            <span>Rs.350.00</span>
        </div>
    </div>

    <!-- Desserts Section -->
    <div id="desserts" class="menu-section">
        <div class="menu-item">
            <div>
                <h3>Chocolate Lava Cake</h3>
                <p>Rich chocolate cake with a molten center, served with vanilla ice cream.</p>
            </div>
            <span>Rs.600.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Classic Cheesecake</h3>
                <p>Creamy cheesecake with a graham cracker crust and berry topping.</p>
            </div>
            <span>Rs.550.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Tiramisu</h3>
                <p>Layers of espresso-soaked ladyfingers and mascarpone cream.</p>
            </div>
            <span>Rs.650.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Fruit Tart</h3>
                <p>Buttery tart shell filled with custard and topped with fresh fruits.</p>
            </div>
            <span>Rs.500.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Brownie Sundae</h3>
                <p>Fudgy brownie topped with ice cream, chocolate sauce, and nuts.</p>
            </div>
            <span>Rs.600.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Banoffee Pie</h3>
                <p>Layered banana, toffee, and whipped cream on a biscuit base.</p>
            </div>
            <span>Rs.550.00</span>
        </div>
    </div>

    <div id="noResult" class="no-result" style="display: none;">
        No results found.
    </div>
</div>

<div class="header">
    <a href="Home.jsp">Back to Home</a>
</div>

<script>
    function showMenu(section) {
        var sections = document.getElementsByClassName('menu-section');
        for (var i = 0; i < sections.length; i++) {
            sections[i].classList.remove('active');
        }
        document.getElementById(section).classList.add('active');
        
        var buttons = document.getElementsByTagName('button');
        for (var i = 0; i < buttons.length; i++) {
            buttons[i].classList.remove('active');
        }
        event.target.classList.add('active');
    }

    function searchMenu() {
        var input = document.getElementById('searchInput');
        var filter = input.value.toLowerCase();
        var menuItems = document.getElementsByClassName('menu-item');
        var noResult = document.getElementById('noResult');
        var visibleItems = 0;

        for (var i = 0; i < menuItems.length; i++) {
            var itemText = menuItems[i].textContent || menuItems[i].innerText;
            if (itemText.toLowerCase().indexOf(filter) > -1) {
                menuItems[i].style.display = "";
                visibleItems++;
            } else {
                menuItems[i].style.display = "none";
            }
        }

        if (visibleItems === 0) {
            noResult.style.display = "block";
        } else {
            noResult.style.display = "none";
        }
    }
</script>

</body>
</html>
