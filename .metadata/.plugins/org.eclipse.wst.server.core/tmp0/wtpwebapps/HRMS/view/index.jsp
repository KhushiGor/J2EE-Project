<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f9;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        .button-container {
            text-align: center;
            margin: 20px;
        }
        .button-container a {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .button-container a:hover {
            background-color: #45a049;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            text-align: left;
            padding: 8px;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        .action-buttons a {
            padding: 5px 10px;
            background-color: #007BFF;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
        .action-buttons a.delete {
            background-color: #FF5733;
        }
        .action-buttons a:hover {
            opacity: 0.9;
        }
    </style>
</head>
<body>

    <h1>Employee Management</h1>

    <!-- Button to Add Employee -->
    <div class="button-container">
        <a href="${pageContext.request.contextPath}/addEmployee">Add Employee</a>
    </div>

    <!-- Employee Data Table -->
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Position</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <%-- Example data for demonstration. Replace with dynamic data from server --%>
            <%-- Assuming employees is a List of Employee objects passed to the JSP --%>
            <c:forEach var="employee" items="${employees}">
                <tr>
                    <td>${employee.id}</td>
                    <td>${employee.name}</td>
                    <td>${employee.email}</td>
                    <td>${employee.position}</td>
                    <td class="action-buttons">
    						<a href="${pageContext.request.contextPath}/updateEmployee?id=${employee.id}">Update</a>
    						<a href="${pageContext.request.contextPath}/deleteEmployee?id=${employee.id}" class="delete">Delete</a>
                    </td>
                </tr>
            </c:forEach>

            <%-- Remove this hardcoded row once dynamic data is implemented --%>
            <tr>
                <td>1</td>
                <td>John Doe</td>
                <td>johndoe@example.com</td>
                <td>Manager</td>
                <td class="action-buttons">
                    <a href="${pageContext.request.contextPath}/updateEmployee?id=1">Update</a>
                    <a href="${pageContext.request.contextPath}/deleteEmployee?id=1" class="delete">Delete</a>
                </td>
            </tr>
        </tbody>
    </table>

</body>
</html>
