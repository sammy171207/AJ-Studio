<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
    <title>Profile Information</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <style>
        body {
            margin: 0;
            font-family: "Lato", sans-serif;
        }

        .sidebar {
            margin: 0;
            padding: 0;
            width: 250px; /* Reduced width for the profile sidebar */
            background-color: #ed563b;
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
            font-size: 20px;
        }

        .sidebar a.active {
            background-color: #d15828;
            color: white;
        }

        .sidebar a:hover:not(.active) {
            background-color: #d55a5a;
            color: white;
        }

        .content {
            margin-left: 250px; /* Adjusted margin to account for sidebar width */
            padding-top: 20px;
            padding-left: 20px;
        }

        .profile-content {
            padding: 20px;
        }

        .profile {
            text-align: center;
            padding: 20px;
            position: relative;
        }

        .profile img {
            width: 80%;
            border-radius: 50%;
            margin-bottom: 20px;
        }

        .view-profile {
            position: absolute;
            bottom: -12px;
            left: 0;
            right: 0;
            text-align: center;
            font-size: 12px;
        }

        .profile-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .profile-table th, .profile-table td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
            text-align: left;
        }

        .profile-table th {
            background-color: #ed563b;
            color: white;
        }

        .profile-table tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .profile-table tr:hover {
            background-color: #ddd;
        }

        /* Add new styles for the button-link class */
        .button-link {
            margin-top: 10px;
            display: inline-block;
            padding: 10px 20px;
            background-color: #ed563b; /* Background color */
            color: #fff; /* Text color */
            text-decoration: none;
            border-radius: 5px;
        }

        .button-link:hover {
            background-color: #d15828; /* Darker shade of background color on hover */
        }

        /* Additional styles for the form */
        .update-form {
            margin-top: 20px;
        }

        .update-form label {
            display: block;
            margin-bottom: 10px;
        }

        .update-form input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
    </style>
</head>
<body>

<div class="sidebar">
    <div class="profile">
        <img src="assets/images/third-trainer.jpg" alt="Profile Image">
        <p class="view-profile">View Profile</p>
    </div>
  
    <a class="active" href="#home">Medical Records  &nbsp; <i class="bi bi-heart-pulse"></i></a>
    <a href="#about">Active Packs and Subscription </a>
    <a href="#contact">Support ; &emsp; &emsp;   &emsp; <i class="bi bi-person-lines-fill"></i></a>
    <a href="#about">Logout</a>
</div>

<div class="content">
    <div class="profile-content">
    
      <h2>Update Profile Information</h2>
       <form action="update" method="post" class="update-form">
            <label for="firstName">First Name:</label>
            <input type="text" id="firstName" name="firstName" value="<%= request.getAttribute("firstName") %>">
            <label for="lastName">Last Name:</label>
            <input type="text" id="lastName" name="lastName" value="<%= request.getAttribute("lastName") != null ? request.getAttribute("lastName") : "" %>">
            <label for="email">Email:</label>
            <input type="text" id="email" name="email" value="<%= request.getAttribute("email") != null ? request.getAttribute("email") : "" %>">
            <label for="phone">Phone:</label>
            <input type="text" id="phone" name="phone" value="<%= request.getAttribute("phone") != null ? request.getAttribute("phone") : "" %>">
            <label for="address">Address:</label>
            <input type="text" id="address" name="address" value="<%= request.getAttribute("address") != null ? request.getAttribute("address") : "" %>">
            <label for="city">City:</label>
            <input type="text" id="city" name="city" value="<%= request.getAttribute("city") != null ? request.getAttribute("city") : "" %>">
            <label for="state">State:</label>
            <input type="text" id="state" name="state" value="<%= request.getAttribute("state") != null ? request.getAttribute("state") : "" %>">
            <label for="zipCode">Zip Code:</label>
            <input type="text" id="zipCode" name="zipCode" value="<%= request.getAttribute("zipCode") != null ? request.getAttribute("zipCode") : "" %>">
           
            <button type="submit" class="button-link">Update Profile</button>
        </form>

    </div>
</div>

</body>
</html>
