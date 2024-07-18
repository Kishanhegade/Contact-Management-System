<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Contact</title>
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
        padding: 20px; /* Added padding for space around the form */
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 300px;
        max-width: 100%; /* Ensures the form doesn't exceed the viewport width */
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    form input[type="text"],
    form input[type="tel"],
    form button {
        width: 100%;
        padding: 12px; /* Increased padding for larger input fields */
        margin: 8px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
        font-size: 16px; /* Increased font size for better readability */
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
<link href="https://fonts.googleapis.com/css2?family=Merriweather:wght@400;700&display=swap" rel="stylesheet">
</head>
<body>
    <%
        int contactId = Integer.parseInt(request.getParameter("contactId"));
        String contactName = request.getParameter("contactName");
        long contactNumber = Long.parseLong(request.getParameter("contactNumber"));
    %>
    <div class="container">
        <form action="update-contact" method="post">
            <input type="hidden" name="contactId" value="<%=contactId%>"/>
            <input type="text" placeholder="Enter Contact Name" value="<%=contactName %>" required name="contactName"/>
            <input type="tel" placeholder="Enter Contact Number" value="<%=contactNumber %>" required name="contactNumber"/>
            <button type="submit">Update Contact</button>
        </form>
    </div>
</body>
</html>
