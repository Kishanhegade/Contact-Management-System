<%@page import="com.jsp.hibernate.cms.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
	font-family: "Merriweather", serif;
	font-weight: 400;
	font-style: normal;
}

body {
	background-color: #f4f4f4;
}

body .container {
	background-color: #f4f4f4;
	display: flex;
	flex-direction: column; justify-content : center;
	align-items: center;
	height: 500px;
	justify-content: center;
}

h1 {
	text-align: center;
	margin-bottom: 20px;
}

form {
	background-color: #fff;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	width: 300px;
	display: flex;
	flex-direction: column;
	align-items: center;
}

form input[type="text"], form input[type="email"], form input[type="password"],
	form button {
	width: 100%;
	padding: 15px;
	margin: 8px 0;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-sizing: border-box;
}

form button {
	background-color: #007BFF;
	color: #fff;
	border: none;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

form button:hover {
	background-color: #0056b3;
}
</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Maname&family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&family=Playfair+Display:ital,wght@0,400..900;1,400..900&display=swap"
	rel="stylesheet">
</head>
<body>
	<%
	User user = (User) session.getAttribute("user");
	%>

	<div class="container">
		<h1>Edit Profile</h1>
		<form action="update-profile" method="post">
			<input type="text" name="username" value="<%=user.getUsername()%>"
				placeholder="Enter name"> <input type="email" name="email"
				value="<%=user.getEmail()%>" placeholder="Enter email"> <input
				type="password" name="password" value="<%=user.getPassword()%>"
				placeholder="Enter password">
			<button type="submit">Update</button>
		</form>
	</div>
	<%
	String error = (String) request.getAttribute("error");
	if (error != null) {
	%>
	<%=error%>
	<%
	}
	%>
</body>
</html>
