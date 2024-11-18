<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
        /* Basic reset */
        html, body {
            margin: 0;
            padding: 0;
            height: 100%;
            width: 100%;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Background image styling */
        body {
            background-image: url('./Image/pexels-mark-cruzat-1872272-3494806.jpg'); /* Replace with your image URL */
            background-size: cover;
            background-position: center;
            color: #333;
        }

        /* Main container styling */
        .container {
            max-width: 800px;
            margin: 40px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9); /* Transparent white background */
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        /* Form styling */
        .contact-form {
            width: 100%;
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .contact-form label {
            font-weight: bold;
            margin-bottom: 5px;
        }

        .contact-form input, .contact-form textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 1em;
            box-sizing: border-box;
        }

        .contact-form textarea {
            resize: vertical;
        }

        .contact-form button {
            background-color: #007bff;
            color: #fff;
            padding: 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1em;
            transition: background-color 0.3s ease;
        }

        .contact-form button:hover {
            background-color: #0056b3;
        }

        /* Map styling */
        .map {
            width: 100%;
            height: 400px;
            border: 1px solid #ddd;
            border-radius: 8px;
            margin-top: 40px;
            overflow: hidden;
        }

        /* Footer styling */
        .footer {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            display: flex;
            justify-content: space-between;
            padding: 10px 20px;
            box-shadow: 0 -2px 4px rgba(0, 0, 0, 0.2);
        }

        .footer a {
            background-color: rgba(255, 255, 255, 0.5); /* Semi-transparent background */
            color: #007bff;
            padding: 10px 20px;
            border-radius: 4px;
            text-decoration: none;
            text-align: center;
            transition: background-color 0.3s ease;
        }

        .footer a:hover {
            background-color: rgba(255, 255, 255, 0.7);
        }

        .footer a:first-child {
            margin-right: auto;
        }

        .footer a:last-child {
            margin-left: auto;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Contact Us</h1>
        <form class="contact-form" action="/submit" method="post">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>

            <label for="message">Message</label>
            <textarea id="message" name="message" rows="6" required></textarea>

            <button type="submit">Send Message</button>
        </form>

        <!-- Replace with your map embed URL -->
        
    </div>

    <div class="footer">
        <a href="/index">Home</a>
        <a href="/about">About Us</a>
    </div>
</body>
</html>
    