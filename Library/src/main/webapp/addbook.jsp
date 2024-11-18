<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Book</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        #add-book-form {
            max-width: 600px;
            margin: 40px auto;
            padding: 20px;
            background-color: #ffffff;
            border: 1px solid #e0e0e0;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        #add-book-form h2 {
            text-align: center;
            color: #333333;
            margin-bottom: 20px;
        }
        #add-book-form label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555555;
        }
        #add-book-form input[type="text"],
        #add-book-form input[type="number"],
        #add-book-form textarea {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #cccccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
            color: #333333;
        }
        #add-book-form textarea {
            resize: vertical;
        }
        #add-book-form input[type="submit"] {
            display: block;
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 4px;
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        #add-book-form input[type="submit"]:hover {
            background-color: #45a049;
        }
        #add-book-form input[type="submit"]:active {
            background-color: #3e8e41;
        }
    </style>
</head>
<body>
    <section id="add-book-form">
        <h2>Add Book</h2>
        <form action="/addbookprocess" method="post">
            <label for="title">Title:</label>
            <input type="text" id="title" name="title" required>
            
            <label for="author">Author:</label>
            <input type="text" id="author" name="author" required>
            
            <label for="year">Year:</label>
            <input type="number" id="year" name="year" required>
            
            <label for="description">Description:</label>
            <textarea id="description" name="description" rows="4" required></textarea>
            
            <input type="submit" value="Add Book">
        </form>
    </section>
</body>
</html>
