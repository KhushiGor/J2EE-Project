<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update-Employee</title>
<style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 30px;
            text-align: center;
            width: 100%;
            max-width: 400px;
        }

        h1 {
            color: #4CAF50;
            font-size: 2em;
            margin-bottom: 20px;
        }

        p {
            font-size: 1.2em;
            color: #333;
            margin-bottom: 30px;
        }

        a {
            display: inline-block;
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 1em;
            transition: background-color 0.3s;
        }

        a:hover {
            background-color: #45a049;
        }

        @media (max-width: 600px) {
            .container {
                width: 90%;
            }

            h1 {
                font-size: 1.8em;
            }

            p {
                font-size: 1em;
            }

            a {
                font-size: 0.9em;
            }
        }
    </style>
</head>
<body>
        <div class="container">
        	<h1>Employee Updated Successfully!</h1>
        	<p>Employee ID: ${employeeId}</p>
        	<p>Employee Name: ${employeeName}</p>
        	<p>Employee Email: ${employeeEmail}</p>
        	<p>Employee Position: ${employeePosition}</p>
        	<a href="${pageContext.request.contextPath}/HomeController">View Employees</a>
    </div>   
</body>
</html>