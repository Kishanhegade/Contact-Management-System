<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<style>
    * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
        ;
    }
    body .container{
        background-color: #f4f4f4;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 500px;
    }
    .form {
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        width: 350px;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    h1 {
        margin-bottom: 20px;
        color: #333;
        font-family: 'Maname', serif;
        font-weight: 400;
        font-style: normal
    }
    form {
        width: 100%;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    form input[type="text"],
    form input[type="email"],
    form input[type="password"],
    form input[type="submit"] {
        width: 100%;
        padding: 15px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
    }
    form input[type="text"]:focus,
    form input[type="email"]:focus,
    form input[type="password"]:focus {
        border-color: #007BFF;
        outline: none;
    }
    form input[type="submit"] {
        background-color: #007BFF;
        color: #fff;
        border: none;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.3s ease;
    }
    form input[type="submit"]:hover {
        background-color: #0056b3;
        transform: translateY(-2px);
    }
    h2 {
        color: red;
        margin-top: 20px;
    }
</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Maname&display=swap" rel="stylesheet">
</head>
<body>
	<div class="container">
    <div class="form">
        <h1>Register</h1>
        <form action="register" method="post">
            <input name="username" type="text" placeholder="Enter your name" required>
            <input name="email" type="email" placeholder="Enter your email" required>
            <input name="password" type="password" placeholder="Enter your password" required>
            <input type="submit" value="Register">
        </form>
        <% String message = (String) request.getAttribute("message"); %>
        <% if (message != null) { %>
            <h2><%= message %></h2>
        <% } %>
    </div>
    </div>
</body>
</html>
