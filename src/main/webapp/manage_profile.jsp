<%@page import="com.jsp.hibernate.cms.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Profile</title>
<style>
    * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
        
    }
    body {
        background-color: #f4f4f4;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        font-family: "Merriweather", serif;
  font-weight: 400;
  font-style: normal;
    }
    .profile {
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        width: 350px;
        display: flex;
        flex-direction: column;
        align-items: flex-start;
    }
    .profile .info {
        margin: 10px 0;
        width: 100%;
        display: flex;
        justify-content: space-between;
    }
    .profile .info span,
    .profile .info div {
        flex: 1;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        text-align: center;
        font-size: 16px;
    }
    .profile .info span {
        background-color: #f0f0f0;
        font-weight: bold;
    }
    .profile .buttons {
        display: flex;
        justify-content: space-between;
        width: 100%;
        margin-top: 20px;
        font-size: 16px;
    }
    .profile .buttons a {
        display: inline-block;
        padding: 10px 15px;
        text-decoration: none;
        color: #fff;
        background-color: #007BFF;
        border-radius: 5px;
        transition: background-color 0.3s ease, transform 0.3s ease;
        text-align: center;
        width: 48%;
    }
    .profile .buttons a:hover {
        background-color: #0056b3;
        transform: translateY(-2px);
    }
</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Maname&family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&family=Playfair+Display:ital,wght@0,400..900;1,400..900&display=swap" rel="stylesheet">
</head>
<body>
    <%
    User user = (User) session.getAttribute("user");
    %>
    <div class="profile">
        <div class="info">
            <span>Name:</span>
            <div><%=user.getUsername()%></div>
        </div>
        <div class="info">
            <span>Email:</span>
            <div><%=user.getEmail()%></div>
        </div>
        <div class="info">
            <span>Password:</span>
            <div><%=user.getPassword()%></div>
        </div>
        <div class="buttons">
            <a href="UpdateUser.jsp">Edit</a>
            <a href="delete-profile">Delete</a>
        </div>
    </div>
</body>
</html>
