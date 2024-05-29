<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*, java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Client Dashboard</title>
    <style>
       *{
    margin: 0;
    padding: 0;
}
nav{
    background-color: black;
    color: white;
    padding: 20px;
}
h1,ul,li{
    display: inline;
    
}
ul{
    margin-left: 60%;
    
}
li{
    
    
    cursor: pointer;
    padding: 20px;
}
a{
 color: dodgerblue;  
 text-decoration: none;
}
        .container {
            padding: 20px;
            margin-top: 100px;
        }
        .chat-history {
            margin-top: 20px;
            padding: 20px;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .chat-history h2 {
            margin-top: 0;
        }
    </style>
</head>
<body>

<div class="header">
        <nav>
            <h1>Chat app</h1>
            <ul>
                <li><a href="Msg.jsp">Send Messages</a></li>
                
                <li><a href="index.html">Logout</a></li>
            </ul>
        </nav>
    </div>

<div class="container">
    <%
        // Retrieve form data
        String employeeName = request.getParameter("employee_name");
        String System_Number = request.getParameter("System_Number");
        String position = request.getParameter("position");

        // Create or retrieve session object
        HttpSession sess = request.getSession(true);

        // Store user sign-up details in session
        session.setAttribute("employeeName", employeeName);
        session.setAttribute("System_Login", System_Number);
        session.setAttribute("position", position);
        out.println("Employee Name : "+ employeeName);
        out.println("System Number : "+System_Number);
        out.println("Position : "+position);

 %>
    
</div>

</body>
</html>
