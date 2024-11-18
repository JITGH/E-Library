<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.model.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Members</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f7f9;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        .container {
            display: flex;
            flex-grow: 1;
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
            background-color: #ecf0f1;
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

        table {
            width: 100%;
            border-collapse: collapse;
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

        .delete-btn {
            padding: 8px 12px;
            background-color: #e74c3c;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .delete-btn:hover {
            background-color: #c0392b;
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
    </style>
</head>
<body>
    <div class="container">
        <aside class="sidebar">
            <div class="logo">Library Admin</div>
            <nav class="nav">
                <ul>
                    <li><a href="/addash">Dashboard</a></li>
                    <li><a href="/book">Add Book</a></li>
                    <li><a href="/users">Members</a></li>
                    <li><a href="#">Issue Book</a></li>
                    <li><a href="#">Settings</a></li>
                </ul>
            </nav>
        </aside>
        <main class="main-content">
            <header class="header">
                <div class="header-content">
                    <input type="text" placeholder="Search...">
                    <div class="user-info">
                        <img src="./Image/pngegg.png" alt="User Avatar">
                        <form action="/logout" method="get" style="display: inline;">
                            <button type="submit" class="logout-btn">Logout</button>
                        </form>
                    </div>
                </div>
            </header>
            <section class="content">
                <h1>User List</h1>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            List<User> users = (List<User>) request.getAttribute("users");
                            if (users != null && !users.isEmpty()) {
                                for (User user : users) {
                        %>
                        <tr>
                            <td><%= user.getId() %></td>
                            <td><%= user.getName() %></td>
                            <td><%= user.getEmail() %></td>
                            <td>
                                <form action="/deleteUser" method="post" style="display: inline;">
                                    <input type="hidden" name="userId" value="<%= user.getId() %>">
                                    <button type="submit" class="delete-btn">Delete</button>
                                </form>
                            </td>
                        </tr>
                        <%
                                }
                            } else {
                        %>
                        <tr>
                            <td colspan="4">No users available</td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </section>
        </main>
    </div>
    <footer class="footer">
        &copy; 2024 Library Admin. All rights reserved.
    </footer>
</body>
</html>
