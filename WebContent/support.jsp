<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
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
            width: 400px;
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
            font-size: 30px;
        }

        .sidebar a.active {
            background-color: #d15828;
            color: white;
        }

        .sidebar a:hover:not(.active) {
            background-color: #d55a5a;
            color: white;
        }

        div.content {
            margin-left: 400px;
            padding-top: 200px;
            padding: 1px 16px;
            height: 1000px;
        }

        .con {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Set the height of the content to 100% of the viewport height */
        }

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
            font-size: 5px;
        }

        @media screen and (max-width: 700px) {
            .sidebar {
                width: 100%;
                height: auto;
                position: relative;
            }

            .sidebar a {
                float: left;
            }

            div.content {
                margin-left: 0;
            }
        }

        @media screen and (max-width: 400px) {
            .sidebar a {
                text-align: center;
                float: none;
            }
        }
    </style>
</head>
<body>

<div class="sidebar">
    <div class="profile">
        <img src="assets\images\third-trainer.jpg" alt="Profile Image">
        <a href="profile" class="view-profile" style="font-size: 12px;">View Profile</a>
    </div>
    <h2 style="text-align: center; margin-top: 20px; font-size: 30px; font-weight: 100%;">
        <span style="color: #ec1010;">AJ</span> <span style="color: white;">Studio</span>
    </h2>
    <!-- Brand name added -->

    <a href="#home">Medical Test  &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &ensp; <i class="bi bi-heart-pulse"></i></a>
    <a href="#news">Active Packs and Subscription </a>
    <a href="#contact">Redeem Voucher  &emsp;  <i class="bi bi-badge-vo"></i></a>
    <a class="active" href="#support">Support &nbsp; &emsp; &emsp; &emsp;   &emsp;<i class="bi bi-person-lines-fill"></i></a>
    <a href="#logout">Logout       &nbsp; &nbsp; &emsp; &emsp; &emsp;   &emsp;<i class="bi bi-box-arrow-right"></i></a>

</div>

<div class="content">
    <div class="con" style="margin-top: 3px; display: flex; flex-direction: column; align-items: center; text-align: center;">
        <h2>Welcome <%= session.getAttribute("username") %></h2>
       
        <!-- Support Container -->
        <div class="support-container" style="background-color: #ed563b; color: #fff; text-align: left; padding: 20px;">
            <h3 style="margin-bottom: 10px;">Support</h3>
            <p>We're here to assist you every step of the way. Whether you have questions, need troubleshooting, or just want to say hello, our dedicated support team is ready to provide personalized help. Reach out to us anytime!</p>

            <!-- Contact Details -->
            <h4>Contact Details</h4>
            <p>Email: support@example.com</p>
            <p>Phone: +1234567890</p>

            <!-- Address -->
            <h4>Address</h4>
            <p>123 Main Street, City, Country</p>

            <!-- Support Details -->
            <h4>Support Details</h4>
            <p>If you need any assistance, feel free to contact us using the provided details.</p>
        </div>
    </div>
</div>



<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</body>
</html>
