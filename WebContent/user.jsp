<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User List</title>
</head>
<body>
    <h1>User List</h1>
    
    <% java.util.List<String[]> userList = (java.util.List<String[]>) request.getAttribute("userList"); %>
    
    <% if (userList != null && !userList.isEmpty()) { %>
        <table border="1">
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
            </tr>
            <% for (String[] userData : userList) { %>
                <tr>
                    <td><%= userData[0] %></td>
                    <td><%= userData[1] %></td>
                </tr>
            <% } %>
        </table>
    <% } else { %>
        <p>No users found.</p>
    <% } %>
</body>
</html>
