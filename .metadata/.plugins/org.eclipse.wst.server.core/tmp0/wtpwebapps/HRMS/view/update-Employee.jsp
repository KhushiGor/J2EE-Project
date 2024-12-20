<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update-Employee</title>
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
</head>
<body>
    <div class="form-container">
        <h2>Update Employee</h2>
       <form method="post" action="${pageContext.request.contextPath}/updateEmployee">
            <input type="text" name="id" placeholder="Employee ID" value="${id}" readonly>
            <input type="text" name="name" placeholder="Name" value="${name}" required>
            <input type="email" name="email" placeholder="Email" value="${email}" required>
            <input type="text" name="position" placeholder="Position" value="${position}" required>
            <button type="submit">Update Employee</button>
        </form>
    </div>
</body>
</html>
</body>
</html>