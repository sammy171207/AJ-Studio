<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test Registrations</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h2>Test Registrations</h2>
    <table>
        <tr>
            <th>Test Name</th>
            <th>Full Name</th>
            <th>Email</th>
            <th>Date</th>
            <th>Time</th>
        </tr>
        <c:forEach items="${testRegistrations}" var="registration">
            <tr>
                <td>${registration[0]}</td>
                <td>${registration[1]}</td>
                <td>${registration[2]}</td>
                <td>${registration[3]}</td>
                <td>${registration[4]}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
