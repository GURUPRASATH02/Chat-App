<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login Process</title>
</head>
<body>
    <%
        // Retrieve username and password from the request
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Check if username and password match the admin credentials
        if ("admin".equals(username) && "admin02".equals(password)) {
            // Authentication successful, redirect to admin dashboard or any other admin page
            response.sendRedirect("AdminDashboard.jsp");
        } else {
            // Authentication failed, redirect back to the login page with an error message
            response.sendRedirect("adminLogin.jsp?error=invalid_credentials");
        }
    %>
</body>
</html>
