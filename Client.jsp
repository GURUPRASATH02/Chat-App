<%@page import="java.security.SecureRandom"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Client Sign Up</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f1f1f1;
        }
        .signup-form {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .signup-form h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .signup-form input[type="text"],
        .signup-form input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 6px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .signup-form input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            width: 50%;
            margin-left: 25%;
        }
        .signup-form input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="signup-form">
        <h2>Client Login</h2>
        <form action="ClientDashboard.jsp" method="post">
            <input type="text" name="employee_name" placeholder="Employee Name" required><br>
            <input type="text" name="System_Number" placeholder="System_Number" required><br>
            <input type="text" name="position" placeholder="Position" required><br>
            
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>
