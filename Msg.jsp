<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Client Chat</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        h1, h2 {
            color: #333;
        }
        form {
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 8px;
        }
        input[type="text"] {
            width: calc(60% - 22px);
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 10px;
        }
        button {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
        #chatHistory {
            background-color: white;
            border: 1px solid #ccc;
            border-radius: 4px;
            padding: 10px;
            max-height: 300px;
            overflow-y: auto;
        }
        #chatHistory p {
            border-bottom: 1px solid #eee;
            padding: 5px 0;
        }
        #chatHistory p:last-child {
            border-bottom: none;
        }
        a {
            color: #007bff;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Client Chat</h1>

    <form action="Msg.jsp" method="post">
        <label for="clientMessage">Your Message:</label>
        <input type="text" id="clientMessage" name="clientMessage" required>
        <button type="submit">Send</button>
    </form>

    <h2>Chat History</h2>
    <div id="chatHistory">
        <%
            ArrayList<String> chatHistory = (ArrayList<String>) session.getAttribute("chatHistory");
            if (chatHistory == null) {
                chatHistory = new ArrayList<>();
            }

            String clientMessage = request.getParameter("clientMessage");
            if (clientMessage != null && !clientMessage.trim().isEmpty()) {
                chatHistory.add("Client: " + clientMessage);
                session.setAttribute("chatHistory", chatHistory);
            }

            for (String message : chatHistory) {
                out.println("<p>" + message + "</p>");
            }
        %>
    </div>

    
</body>
</html>
