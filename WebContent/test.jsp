<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Medical Test</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css'>
    
    <style>
        /* CSS styles */
        body {
            margin: 0;
            font-family: "Lato", sans-serif;
        }

        /* Sidebar styles */
        .sidebar {
            width: 400px;
            background-color: #ed563b; /* Theme color */
            position: fixed;
            height: 100%;
            overflow: auto;
        }

        .sidebar a {
            display: block;
            color: rgb(250, 245, 245);
            padding: 16px;
            text-decoration: none;
            margin-bottom: 10px;
            font-size: 30px;
            text-align: center;
        }

        .sidebar a.active {
            background-color: #d15828; /* Active color */
            color: white;
        }

        .sidebar a:hover:not(.active) {
            background-color: #d55a5a; /* Hover color */
            color: white;
        }

        /* Profile styles */
        .profile {
            text-align: center;
            position: relative;
        }

        .profile img {
            width: 80%;
            border-radius: 50%;
            margin: 20px auto;
            display: block;
        }

        .view-profile {
            position: absolute;
            top: 50%;
            right: -8px;
            left: 6px;
            transform: translateY(-50%);
            font-size: 2px;
        }

        /* Content styles */
        .content {
            margin-left: 400px;
            padding: 20px 16px;
            display: flex;
            justify-content: center; /* Center content horizontally */
            align-items: center; /* Center content vertically */
        }

        form {
            margin-top:40px;
            width: 80%; /* 80% width */
            background-color: #f8f9fa; /* Light background color */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        label {
            font-size: 18px;
            margin-bottom: 10px;
            display: block;
        }

        input[type="text"], input[type="email"], input[type="date"], input[type="time"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #ed563b; /* Button color */
            color: white;
            padding: 14px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            font-size: 18px;
        }

        input[type="submit"]:hover {
            background-color: #d15828; /* Button hover color */
        }
    </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
    <div class="profile">
        <img src="assets\images\pink.jpg" alt="Profile Image">
        <a href="profile" class="view-profile">View Profile</a>
    </div>
    <a class="active" href="#home"><h2 style="text-align: center; margin-top: 20px; font-size: 30px; font-weight: 100%;">
        <span style="color: #ec1010;">AJ</span> <span style="color: white;">Studio</span>
    </h2>
    <a href="#home">Medical Test <i class="bi bi-heart-pulse"></i></a>
    <a href="#news">Active Packs and Subscription <i class="bi bi-person-fill-check"></i></a>
    <a href="support.jsp">Support <i class="bi bi-person-lines-fill"></i></a>
    <a href="logout">Logout <i class="bi bi-box-arrow-right"></i></a>
</div>

<!-- Content -->
<div class="content">
    <form action="#">
        <label for="testName">Test Name:</label>
        <input type="text" id="testName" name="testName" required>

        <label for="fullName">Full Name:</label>
        <input type="text" id="fullName" name="fullName" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="date">Date:</label>
        <input type="date" id="date" name="date" required>

        <label for="time">Time:</label>
        <input type="time" id="time" name="time" required>

        <input type="submit" value="Book Test">
    </form>
</div>

</body>
</html>
