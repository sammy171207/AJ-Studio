<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

div.content {
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

.button-link {
    margin-top:10px;
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


@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
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
        <p class="view-profile">View Profile</p>
    </div>
  
    <a class="active" href="#home">Medical Records  &nbsp; <i class="bi bi-heart-pulse"></i></a>
    <a href="#about">Active Packs and Subscription </a>
    <a href="#contact">Support ; &emsp; &emsp;   &emsp; <i class="bi bi-person-lines-fill"></i></a>
    <a href="#about">Logout</a>
</div>

<div class="content">
    <div class="profile-content">
        <h2>Profile Information</h2>
        <table class="profile-table">
            <tr>
                <th>Attribute</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>Name</td>
                <td><%= request.getAttribute("firstName") %> <%= request.getAttribute("lastName") %></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><%= request.getAttribute("email") %></td>
            </tr>
            <tr>
                <td>Phone</td>
                <td><%= request.getAttribute("phone") %></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><%= request.getAttribute("address") %>, <%= request.getAttribute("city") %>, <%= request.getAttribute("state") %>, <%= request.getAttribute("zipCode") %></td>
            </tr>
            <tr>
                <td>Date Joined</td>
                <td><%= request.getAttribute("currentDate") %></td>
            </tr>
            <tr>
                <td>Membership Type</td>
                <td><%= request.getAttribute("membershipType") %></td>
            </tr>
        </table>    
       <a href="updateProfile.jsp" class="button-link">Update Profile</a>
        </div>
</div>

</body>
</html>
