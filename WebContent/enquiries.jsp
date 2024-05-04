<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Enquiries List</title>
    <style>
        /* CSS for sidebar */
        .sidebar {
            width: 200px;
            height: 100%;
            background-color: #ed563b; /* Sidebar background color */
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
            background-color: #f2f2f2; /* Table background color */
            color: #333; /* Table text color */
        }

        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #ed563b; /* Header background color */
            color: #fff; /* Header text color */
            font-size: 20px; /* Larger header font size */
        }

        caption {
            color: #ed563b; /* Caption text color */
            background-color: #fff; /* Caption background color */
            font-size: 24px; /* Larger caption font size */
            padding: 10px; /* Add padding to caption */
            text-align: left; /* Align caption text */
        }

        h1 {
            color: #ed563b; /* Title color */
            font-size: 36px; /* Larger heading font size */
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

    <h1>Enquiries List</h1>

    <% java.util.List<String[]> enquiriesList = (java.util.List<String[]>) request.getAttribute("enquiriesList"); %>
    
    <% if (enquiriesList != null && !enquiriesList.isEmpty()) { %>
        <table>
            <caption>Enquiries List</caption>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Subject</th>
                <th>Message</th>
                <th>Create At</th>
            </tr>
            <% for (String[] enquiryData : enquiriesList) { %>
                <tr>
                    <td><%= enquiryData[0] %></td>
                    <td><%= enquiryData[1] %></td>
                    <td><%= enquiryData[2] %></td>
                    <td><%= enquiryData[3] %></td>
                    <td><%= enquiryData[4] %></td>
                </tr>
            <% } %>
        </table>
    <% } else { %>
        <p>No enquiries found.</p>
    <% } %>
</body>
</html>
