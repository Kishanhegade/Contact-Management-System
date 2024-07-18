<%@page import="com.jsp.hibernate.cms.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box; 
}

body .home {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	/* display: flex;
        justify-content: center;
        align-items: center; */
	height: 100vh;
}

.container {
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	text-align: center;
	width: 100%;
}

h1 {
	color: #333;
	margin-bottom: 20px;
	font-family : "Maname",
	serif;
	font-weight: 400;
	font-style: normal;
}

a {
	display: block;
	width: 100%;
	margin: 10px 0;
	padding: 10px 0;
	text-decoration: none;
	color: #fff;
	background-color: #007BFF;
	border-radius: 4px;
	transition: background-color 0.3s;
}

a:hover {
	background-color: #0056b3;
}
</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Maname&display=swap"
	rel="stylesheet">
</head>
<body>
	<%
	User user = (User) session.getAttribute("user");
	String addContact = user != null ? "AddContact.jsp" : "login.jsp";
	String manageContact = user != null ? "manage-contact" : "login.jsp";
	String manageProfile = user != null ? "manage_profile.jsp" : "login.jsp";
	%>
	<div class="home">
		<div class="container">
			<h1>Welcome Back</h1>
			<a href="<%=addContact%>">Add Contact</a> <a
				href="<%=manageContact%>">Manage Contacts</a> <a
				href="<%=manageProfile%>">Manage Account</a>
		</div>
	</div>
</body>
</html>
