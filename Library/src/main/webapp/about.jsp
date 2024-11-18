<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us with Transparent Text</title>
    <style>
        /* Ensure the entire page covers the viewport */
        html, body {
            margin: 0;
            padding: 0;
            height: 100%;
            width: 100%;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Background image styling */
        .background {
            background-image: url('./Image/pexels-gesel-757855.jpg'); /* Replace with your image URL */
            background-size: cover;
            background-position: center;
            height: 100vh; /* Full viewport height */
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;
            position: relative; /* Allow absolute positioning of text */
        }

        /* Transparent overlay for text */
        .overlay {
            background: rgba(0, 0, 0, 0.5); /* Black background with 50% opacity */
            color: #fff;
            padding: 40px;
            border-radius: 12px;
            max-width: 600px;
            text-align: center;
        }

        /* Heading styling */
        .overlay h2 {
            margin-top: 0;
            font-size: 2.5em;
            font-weight: bold;
            margin-bottom: 20px;
        }

        /* Paragraph styling */
        .overlay p {
            font-size: 1.2em;
            line-height: 1.6;
            margin: 20px 0;
        }

        /* Footer styling */
        footer {
            background-color: transparent; /* Match the page background */
            color: #fff;
            padding: 20px;
            position: fixed;
            width: 100%;
            bottom: 0;
            left: 0;
            text-align: center;
            box-shadow: 0 -2px 4px rgba(0, 0, 0, 0.1);
        }

        /* Footer buttons */
        .footer-buttons {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 20px;
        }

        .footer-buttons a {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        .footer-buttons a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="background">
        <div class="overlay">
            <h2>About Us</h2>
            <p>Welcome to our organization! We are dedicated to providing high-quality services and resources that make a difference in the community. Our mission is to deliver exceptional value and to continuously improve and adapt to meet our users' needs.</p>
            <p>With a passionate team and a commitment to excellence, we strive to innovate and support our users with the best tools and information available. Join us in our journey to make a positive impact and stay connected with the latest updates and offerings.</p>
        </div>
    </div>

    <footer>
        <div class="footer-buttons">
            <a href="/index">Home</a>
            <a href="/contact">Contact Us</a>
        </div>
    </footer>

</body>
</html>
