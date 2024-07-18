<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Contact</title>
<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
	
}
body{
background-color: #f4f4f4;
}
body .container {
	background-color: #f4f4f4;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	height: 500px;
	margin: 0;
}

h1{
	color: #333;
	margin-bottom: 20px;
	font-family : "Maname",
	serif;
	font-weight: 400;
	font-style: normal;
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

form {
	width: 100%;
	display: flex;
	flex-direction: column;
	align-items: center;
	
}

form input[type="text"], form input[type="tel"], form button[type="submit"]
	{
	width: 100%;
	padding: 15px;
	margin: 10px 0;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 16px;
	font-family: "Playfair Display", serif;
  font-optical-sizing: auto;
  font-weight: <weight>;
  font-style: normal;
}

form input[type="text"]:focus, form input[type="tel"]:focus {
	border-color: #007BFF;
	outline: none;
}

form button[type="submit"] {
	background-color: #007BFF;
	color: #fff;
	border: none;
	cursor: pointer;
	transition: background-color 0.3s ease, transform 0.3s ease;
}

form button[type="submit"]:hover {
	background-color: #0056b3;
	transform: translateY(-2px);
}

.error {
	color: red;
	margin-top: 20px;
}
</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Maname&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Maname&family=Playfair+Display:ital,wght@0,400..900;1,400..900&display=swap" rel="stylesheet">
</head>
<body>
	<div class="container">
		<h1>Add Contact</h1>
		<div class="form">

			<form action="add-contact" method="post">
				<input type="text" placeholder="Enter Contact Name" required
					name="contactName"> <input type="tel"
					placeholder="Enter Contact Number" required name="contactNumber">
				<button type="submit">Add Contact</button>
			</form>
			<%
			String error = (String) request.getAttribute("error");
			%>
			<%
			if (error != null) {
			%>
			<div class="error"><%=error%></div>
			<%
			}
			%>
		</div>
	</div>
</body>
</html>
