<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error</title>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .error-container {
            background-color: white;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 100%;
            max-width: 500px;
        }
        h1 {
            color: #e74c3c;
            font-size: 2em;
        }
        p {
            font-size: 1.2em;
            color: #333;
            margin-top: 20px;
        }
        .details {
            font-size: 1em;
            color: #555;
            margin-top: 15px;
        }
        .back-link {
            margin-top: 30px;
            display: inline-block;
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .back-link:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
<div class="error-container">
        <h1>Oops! Something went wrong!</h1>
        <p>An error occurred while processing your request.</p>
        <p class="details">Error Message: <%= request.getAttribute("errorMessage") %></p>
        <p class="details">Error Code: <%= request.getAttribute("errorCode") %></p>
        <a href="<%= request.getHeader("Referer") %>" class="back-link">Go Back</a>
    </div>
</body>
</html>