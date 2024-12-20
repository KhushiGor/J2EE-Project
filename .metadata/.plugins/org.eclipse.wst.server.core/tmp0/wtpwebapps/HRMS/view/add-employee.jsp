<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add-Employee</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 20px;
    background-color: #f4f4f9;
}
h1, h2 {
    text-align: center;
    color: #333;
}
.form-container {
    max-width: 500px;
    margin: 20px auto;
    padding: 20px;
    background-color: #fff;
    border: 1px solid #ddd;
    border-radius: 8px;
}
.form-container input, .form-container select, .form-container button {
    width: 100%;
    padding: 10px;
    margin: 8px 0;
    border: 1px solid #ddd;
    border-radius: 4px;
}
.response {
    margin-top: 20px;
    text-align: center;
    color: #333;
    font-weight: bold;
}
</style>
</head>
<body>
<div class="form-container">
        <h2>Add New Employee</h2>
         <form action="${pageContext.request.contextPath}/addEmployee" method="post" id="addEmployeeForm">
            <input type="text" id="name" name="employee_name" placeholder="Enter Name" required>
          <input type="text" id="id" name="employee_id" placeholder="Enter ID" required	> 
            <input type="email" id="email" name="employee_email" placeholder="Enter Email" required>
            <input type="text" id="position" name="employee_position" placeholder="Enter Position" required>
            <button type="submit">Add Employee</button>
        </form>
    </div>

</body>
</html>