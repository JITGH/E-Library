<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-image: url('./Image/pexels-pixabay-159711.jpg');
            background-size: cover;
            background-position: center;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        .container {
            display: flex;
            flex-grow: 1;
            background: rgba(244, 247, 249, 0.8); /* Semi-transparent background */
            border-radius: 8px;
            margin: 20px;
        }

        .sidebar {
            width: 250px;
            background-color: #2c3e50;
            color: white;
            display: flex;
            flex-direction: column;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }

        .logo {
            font-size: 1.8em;
            text-align: center;
            padding: 20px 0;
            border-bottom: 1px solid #34495e;
        }

        .nav ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        .nav ul li {
            margin: 10px 20px;
        }

        .nav ul li a {
            display: block;
            padding: 15px 20px;
            background-color: #34495e;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s, transform 0.3s;
            text-align: center;
        }

        .nav ul li a:hover {
            background-color: #3b5998;
            transform: scale(1.05);
        }

        .main-content {
            flex-grow: 1;
            display: flex;
            flex-direction: column;
        }

        .header {
            background-color: #ffffff;
            padding: 15px;
            border-bottom: 1px solid #bdc3c7;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .header-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 100%;
        }

        .header-content input[type="text"] {
            padding: 10px;
            border: 1px solid #bdc3c7;
            border-radius: 4px;
            width: 300px;
            transition: border-color 0.3s;
        }

        .header-content input[type="text"]:focus {
            border-color: #34495e;
            outline: none;
        }

        .user-info {
            display: flex;
            align-items: center;
        }

        .user-info img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            border: 2px solid #34495e;
            margin-right: 10px;
        }

        .logout-btn {
            padding: 10px 15px;
            background-color: #34495e;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .logout-btn:hover {
            background-color: #3b5998;
        }

        .content {
            padding: 20px;
            flex-grow: 1;
            background-color: #ffffff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            margin: 20px;
            border-radius: 8px;
        }

        .footer {
            background-color: rgba(44, 62, 80, 0.7);
            color: white;
            text-align: center;
            padding: 10px;
            width: 100%;
            border-top: 1px solid #34495e;
            position: relative;
            bottom: 0;
        }

        .profile-form {
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            background: rgba(255, 255, 255, 0.9); /* Transparent white background */
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
        }

        .profile-form h2 {
            margin-top: 0;
            font-size: 1.8em;
            color: #34495e;
            text-align: center;
        }

        .profile-form label {
            display: block;
            margin: 15px 0 5px;
            font-weight: bold;
            color: #34495e;
        }

        .profile-form input[type="text"],
        .profile-form input[type="password"] {
            width: calc(100% - 22px);
            padding: 12px;
            border: 1px solid #bdc3c7;
            border-radius: 4px;
            margin-bottom: 15px;
            font-size: 1em;
        }

        .profile-form button {
            padding: 12px 20px;
            background-color: #34495e;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1em;
            transition: background-color 0.3s;
            width: 100%;
        }

        .profile-form button:hover {
            background-color: #3b5998;
        }
    </style>
</head>
<body>
    <div class="container">
        <aside class="sidebar">
            <div class="logo">Student Library</div>
            <nav class="nav">
                <ul>
                    <li><a href="/usdash">Dashboard</a></li>
                    <li><a href="#">Browse Books</a></li>
                    <li><a href="#">Issue Book</a></li>
                    <li><a href="/profile">Profile</a></li>
                </ul>
            </nav>
        </aside>
        <main class="main-content">
            <header class="header">
                <div class="header-content">
                    <input type="text" placeholder="Search for books...">
                    <div class="user-info">
                        <img src="./Image/pngegg.png" alt="User Avatar">
                        <!-- Logout Button Section -->
                        <form action="/logout" method="get" style="display: inline;">
                            <button type="submit" class="logout-btn">Logout</button>
                        </form>
                    </div>
                </div>
            </header>
            <section class="content">
                <form class="profile-form" action="/uspro" method="post">
                    <h2>Profile</h2>
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" value="current_username" disabled>

                    <label for="email">Email:</label>
                    <input type="text" id="email" name="email" value="current_email" disabled>

                    <label for="password">New Password:</label>
                    <input type="password" id="password" name="password">

                    <button type="submit">Update Password</button>
                </form>
            </section>
        </main>
    </div>
    <footer class="footer">
        &copy; 2024 Student Library. All rights reserved.
    </footer>
</body>
</html>
    