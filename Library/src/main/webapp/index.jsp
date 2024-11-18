<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Management System</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('./Image/pexels-gesel-757855.jpg');
            background-size: cover;
            background-attachment: fixed;
            background-position: center;
            color: #333;
        }
        header {
            background-color: rgba(40, 167, 69, 0.8); /* Semi-transparent green background */
            color: #fff;
            padding: 20px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            position: relative;
        }
        header h1 {
            font-size: 2.5em;
            margin: 0;
            font-weight: bold;
        }
        header p {
            font-size: 1.2em;
            margin: 5px 0 0;
            font-weight: 300;
        }
        .header-buttons {
            position: absolute;
            top: 20px;
            right: 20px;
        }
        .header-buttons a {
            background-color: #fff;
            color: #28a745;
            padding: 10px 20px;
            margin-left: 10px;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .header-buttons a:hover {
            background-color: #e2e6ea;
        }
        .header-admin {
            position: absolute;
            top: 20px;
            left: 20px;
        }
        .header-admin a {
            background-color: #fff;
            color: #007bff;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .header-admin a:hover {
            background-color: #d0e0ff;
        }
        nav {
            display: flex;
            justify-content: center;
            background-color: rgba(0, 123, 255, 0.8); /* Semi-transparent blue background */
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        nav a {
            color: #fff;
            padding: 15px 20px;
            text-decoration: none;
            text-align: center;
            transition: background-color 0.3s ease;
        }
        nav a:hover {
            background-color: #0056b3;
        }
        .hero {
            background: url('./Image/pexels-olenkabohovyk-3646172.jpg') no-repeat center center/cover;
            height: 400px;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;
            text-align: center;
            padding: 0 20px;
        }
        .hero h1 {
            font-size: 4em;
            margin: 0;
            line-height: 1.2;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
        }
        .content {
            padding: 40px 20px;
            text-align: center;
            max-width: 1200px;
            margin: 0 auto;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .about {
            background-color: rgba(255, 255, 255, 0.9); /* Slightly transparent white background */
            padding: 40px 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 20px auto;
            max-width: 800px;
        }
        .about h2 {
            color: #007bff;
            margin-bottom: 20px;
            font-size: 2.5em;
            font-weight: bold;
        }
        .about p {
            margin: 0 auto 20px;
            line-height: 1.6;
            color: #555;
            max-width: 800px;
        }
        footer {
            background-color: #343a40;
            color: #fff;
            padding: 40px 20px;
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        footer .footer-content {
            max-width: 1200px;
            width: 100%;
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }
        footer .footer-content div {
            flex: 1;
            margin: 10px;
            min-width: 200px;
        }
        footer a {
            color: #fff;
            text-decoration: none;
        }
        footer a:hover {
            text-decoration: underline;
        }
        footer .social-icons a {
            margin: 0 10px;
            font-size: 1.2em;
        }
        footer p {
            margin: 20px 0 0;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <header>
        <div class="header-admin">
            <a href="/adminl">Admin</a>
        </div>
        <h1>Library Management System</h1>
        <p>Access Your Digital Library Anytime, Anywhere</p>
        <div class="header-buttons">
            <a href="/login">Login</a>
            <a href="/register">Register</a>
        </div>
    </header>
    <nav>
        <a href="/index">Home</a>
        <a href="/about">About Us</a>
        <a href="/contact">Contact Us</a>
    </nav>
    <div class="hero">
        <h1>Welcome to Our Library</h1>
    </div>
    <div class="content">
        <div class="about">
            <h2>About Us</h2>
            <p>Welcome to the Library Management System. Our mission is to provide a comprehensive digital library that offers a wide range of eBooks and learning materials. Our platform is designed to make it easy for you to access valuable resources from anywhere at any time.</p>
            <p>We are committed to enhancing your learning experience with a user-friendly interface and a vast collection of books across various genres. Whether you are a student, a professional, or an avid reader, our library is tailored to meet your needs. Enjoy seamless access to a world of knowledge and make the most out of your reading journey with us.</p>
            <p>Our team continuously updates and expands our catalog to ensure you have access to the latest and most relevant materials. We are dedicated to providing exceptional service and support to help you achieve your learning goals.</p>
            
            <!-- Rectangular image for the About Us section -->
            <!-- <img src="https://source.unsplash.com/800x400/?library" alt="Library Image"> -->
        </div>
    </div>
    <footer>
        <div class="footer-content">
            <div>
                <h3>About Us</h3>
                <p>Our library provides a comprehensive digital learning solution to empower learners across all disciplines.</p>
            </div>
            <div>
                <h3>Contact Us</h3>
                <p>Email: <a href="mailto:contact@library.com">contact@library.com</a></p>
                <p>Phone: (123) 456-7890</p>
                <p>Address: 123 Library St, Booktown, BK 12345</p>
            </div>
            <div>
                <h3>Follow Us</h3>
                <div class="social-icons">
                    <a href="#">Facebook</a>
                    <a href="#">Twitter</a>
                    <a href="#">Instagram</a>
                </div>
            </div>
            <div>
                <h3>FAQ</h3>
                <p><a href="#">How to register?</a></p>
                <p><a href="#">How to borrow books?</a></p>
                <p><a href="#">What arethe library hours?</a></p>
            </div>
        </div>
        <p>&copy; 2024 Library Management System. All rights reserved.</p>
    </footer>
</body>
</html>
                
