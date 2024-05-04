<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AJ Studio Dashboard</title>
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
            text-align: center;
        }

        .sidebar a.active {
            background-color: #d15828;
            color: white;
        }

        .sidebar a:hover:not(.active) {
            background-color: #d55a5a;
            color: white;
        }

        /* Content styles */
        .content {
            margin-left: 400px;
            padding: 20px 16px;
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            gap: 20px;
        }

        .card {
            width: calc(33.33% - 20px); /* 33.33% width with 20px gap */
            background-color: #f8f9fa;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .card i {
            font-size: 30px; /* Decreased icon size */
            margin-bottom: 10px;
        }

        /* Media queries for responsiveness */
        @media screen and (max-width: 700px) {
            .sidebar {
                width: 100%;
                height: auto;
                position: relative;
            }

            .sidebar a {
                float: left;
            }

            .content {
                margin-left: 0;
            }

            .card {
                width: calc(50% - 20px); /* 50% width with 20px gap */
            }
        }

        @media screen and (max-width: 400px) {
            .sidebar a {
                text-align: center;
                float: none;
            }

            .card {
                width: 90%; /* Adjusted width for smaller screens */
            }
        }
    </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
    <a class="active" href="#home">
        <h2 style="text-align: center; margin-top: 20px; font-size: 30px; font-weight: 100%;">
            <span style="color: #ec1010;">AJ</span> <span style="color: white;">Studio</span>
        </h2>
    </a>
    <a href="#home">Medical Test List<i class="bi bi-heart-pulse"></i></a>
    <a href="userList">User List <i class="bi bi-person-fill-check"></i></a>
    <a href="enquiriesList">EnquiriesList <i class="bi bi-person-lines-fill"></i></a>
    <a href="logout">Logout <i class="bi bi-box-arrow-right"></i></a>
</div>

<!-- Content -->
<div class="content">
    <div class="card">
        <i class="bi bi-people"></i>
        <h3>Total Users</h3>
        <p><%= session.getAttribute("totalUsers") %></p>
    </div>
    <div class="card">
        <i class="bi bi-chat-dots"></i>
        <h3>Total Enquiries</h3>
        <p><%= session.getAttribute("totalEnquiries") %></p>
    </div>
    <div class="card">
        <i class="bi bi-diagram-3"></i>
        <h3>Medical Test Requests</h3>
        <p><%= session.getAttribute("totalRequests") %></p>
    </div>
     <hr style="width: 100%; border-top: 1px solid #ed563b; margin-top: 20px;">
</div>

</body>
</html>
