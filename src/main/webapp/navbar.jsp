<%@page import="com.jsp.hibernate.cms.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Management System</title>
<style>
    * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
        font-family: "Playfair Display", serif;
  		font-optical-sizing: auto;
 		font-weight: <weight>;
  		font-style: normal;
        
    }
    body {
        background-color: #f4f4f4;
    }
    nav {
        background-color: #1e1e1e;
        color: #fff;
        padding: 15px 20px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    }
    nav .logo {
        font-size: 26px;
        font-weight: bold;
        font-family : "Maname",	serif;
	font-weight: 400;
	font-style: normal;
    }
    nav div.links {
        display: flex;
        align-items: center;
    }
    nav a {
        color: #fff;
        text-decoration: none;
        margin-left: 20px;
        padding: 10px 15px;
        border-radius: 5px;
        transition: background-color 0.3s ease, transform 0.3s ease;
    }
    nav a:hover {
        background-color: #575757;
        transform: translateY(-2px);
    }
    nav a.active {
        background-color: #575757;
    }
    nav a:first-child {
        margin-left: 0;
    }
</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Maname&family=Playfair+Display:ital,wght@0,400..900;1,400..900&display=swap" rel="stylesheet">
</head>
<body>
    <%
        User user2 = (User) session.getAttribute("user");
    %>
    <nav>
        <div class="logo">Contact Management System</div>
        <div class="links">
            <% if (user2 == null) { %>
                <a href="register.jsp">Register</a>
                <a href="login.jsp">Login</a>
            <% } else { %>
                <a href="logout">Logout</a>
            <% } %>
        </div>
    </nav>
</body>
</html>
