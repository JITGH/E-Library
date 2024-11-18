<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login - Library Management System</title>
    <style>
        /* Ensure the entire page covers the viewport */
        html, body {
            margin: 0;
            padding: 0;
            height: 100%;
            width: 100%;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Background image and styling */
        .background {
            background-image: url('./Image/pexels-pixabay-256541.jpg'); /* Replace with your image URL */
            background-size: cover;
            background-position: center;
            height: 100vh; /* Full viewport height */
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Form container styling */
        .form-container {
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
            box-sizing: border-box;
        }

        /* Heading styling */
        .form-container h2 {
            margin-top: 0;
            color: #007bff;
            font-size: 2em;
            text-align: center;
        }

        /* Form element styling */
        .form-container label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
        }

        .form-container input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 1em;
            box-sizing: border-box;
        }

        .form-container button {
            background-color: #007bff;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1em;
            width: 100%;
            transition: background-color 0.3s ease;
            box-sizing: border-box;
        }

        .form-container button:hover {
            background-color: #0056b3;
        }
         .form-container p {
            text-align: center;
        }

        .form-container a {
            color: #007bff;
            text-decoration: none;
        }

        .form-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="background">
        <div class="form-container">
            <h2>Admin Login</h2>
            <form action="/aloginprocess" method="post">
                <label for="admin-email">Email</label>
                <input type="email" id="admin-email" name="email" required>

                <label for="admin-password">Password</label>
                <input type="password" id="admin-password" name="password" required>

                <button type="submit">Login</button>
            </form>
            <p>Don't have an account? <a href="/adminr">Register here</a></p>
        </div>
    </div>
</body>
</html>
    