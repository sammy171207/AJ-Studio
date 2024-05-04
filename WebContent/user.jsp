<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User List</title>
    <style>
        /* CSS for sidebar */
        .sidebar {
            width: 200px;
            height: 100%;
            background-color: #ed563b; /* Your sidebar color */
            position: fixed;
            top: 0;
            left: 0;
            overflow-x: hidden;
            padding-top: 20px;
        }

        .sidebar a {
            padding: 10px 15px;
            text-decoration: none;
            font-size: 20px;
            color: white;
            display: block;
            transition: 0.3s;
        }

        .sidebar a:hover {
            background-color: #d15828; /* Hover color */
        }

        /* CSS for table */
        table {
            width: 80%;
            margin-left: 220px; /* Adjust to accommodate sidebar width */
            margin-top: 50px; /* Adjust as needed */
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #ed563b; /* Table header color */
            color: white;
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <a href="#">Home</a>
        <a href="#">Profile</a>
        <a href="#">Settings</a>
        <!-- Add more links as needed -->
    </div>

    <h1>User List</h1>
    
    <% java.util.List<String[]> userList = (java.util.List<String[]>) request.getAttribute("userList"); %>
    
    <% if (userList != null && !userList.isEmpty()) { %>
        <table>
            <tr>
                <th colspan="10">User Details</th>
            </tr>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Address</th>
                <th>City</th>
                <th>State</th>
                <th>Zip Code</th>
                <th>Date Joined</th>
                <th>Membership Type</th>
            </tr>
            <% for (String[] userData : userList) { %>
                <tr>
                    <td><%= userData[0] %></td>
                    <td><%= userData[1] %></td>
                    <td><%= userData[2] %></td>
                    <td><%= userData[3] %></td>
                    <td><%= userData[4] %></td>
                    <td><%= userData[5] %></td>
                    <td><%= userData[6] %></td>
                    <td><%= userData[7] %></td>
                    <td><%= userData[8] %></td>
                    <td><%= userData[9] %></td>
                </tr>
            <% } %>
        </table>
    <% } else { %>
        <p>No users found.</p>
    <% } %>
</body>
</html>
