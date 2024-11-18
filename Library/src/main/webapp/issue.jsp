<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.model.Book" %>
<%@ page import="com.example.demo.model.User" %>
<!DOCTYPE html>
<html lang="en">
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

	        .issue-btn {
	            background-color: #27ae60;
	            color: white;
	            border: none;
	            padding: 8px 16px;
	            cursor: pointer;
	            border-radius: 4px;
	            font-size: 14px;
	            font-weight: bold;
	            transition: background-color 0.3s, transform 0.3s;
	        }

	        .issue-btn:hover {
	            background-color: #1e8449;
	            transform: scale(1.05);
	        }

	        .issue-btn:disabled {
	            background-color: #95a5a6;
	            cursor: not-allowed;
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
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Admin</title>
    <style>
        /* Add your CSS styles here */
        .issue-btn {
            background-color: #e74c3c;
            color: white;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
            border-radius: 4px;
        }

        .issue-btn:hover {
            background-color: #c0392b;
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
							<li><a href="/issueBookSection">Issue Book</a></li>
							<li><a href="uspro">Profile</a></li>
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
                <h1>Book List</h1>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Title</th>
                            <th>Author</th>
                            <th>Year</th>
                            <th>Description</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            List<Book> books = (List<Book>) request.getAttribute("books");
								Long userId = (Long) request.getAttribute("userId");	
                            if (books != null && !books.isEmpty()) {
                                for (Book book : books) {
                        %>
                        <tr>
                            <td><%= book.getId() %></td>
                            <td><%= book.getTitle() %></td>
                            <td><%= book.getAuthor() %></td>
                            <td><%= book.getYear() %></td>
                            <td><%= book.getDescription() %></td>
                            <td>
                                
								<form action="/issueBook" method="post">
								    <input type="hidden" name="bookId" value="<%= book.getId() %>">
								    <input type="hidden" name="userId" value="${userId}"> 
								    <button type="submit" class="issue-btn">Issue Book</button>
								</form>

                            </td>
                        </tr>
                        <%
                                }
                            } else {
                        %>
                        <tr>
                            <td colspan="6">No books available</td>
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
