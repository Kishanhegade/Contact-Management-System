<%@page import="com.jsp.hibernate.cms.entity.Contact"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact List</title>
<style>
    * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
    }
    body {
        background-color: #f4f4f4;
        padding: 20px; /* Added padding for space around the table */
    }
    .container {
        width: 80%;
        margin: 20px auto; /* Center the container and provide top margin */
    }
    table {
        width: 100%;
        border-collapse: collapse;
        background-color: #fff;
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    table thead {
        background-color: #007BFF;
        color: #fff;
    }
    table th, table td {
        padding: 12px; /* Uniform padding for all cells */
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    table th {
        font-weight: bold;
    }
    table tbody tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    table td a {
        display: inline-block;
        padding: 6px 12px;
        text-decoration: none;
        color: #007BFF;
        border: 1px solid #007BFF;
        border-radius: 4px;
        transition: background-color 0.3s ease, color 0.3s ease;
    }
    table td a:hover {
        background-color: #007BFF;
        color: #fff;
    }
</style>
</head>
<body>
    <div class="container">
        <table>
            <thead>
                <tr>
                    <th style="width: 5%;">Sl. No</th> 
                    <th style="width: 35%;">Contact Name</th> 
                    <th style="width: 35%;">Contact Number</th> 
                    <th style="width: 10%;">Edit</th> 
                    <th style="width: 15%;">Delete</th> 
                </tr>
            </thead>
            <tbody>
                <%
                    List<Contact> contacts = (List<Contact>) request.getAttribute("contacts");
                    int count = 1;
                    for (Contact contact : contacts) {
                %>
                <tr>
                    <td><%= count %></td>
                    <td><%= contact.getContactName() %></td>
                    <td><%= contact.getContactNumber() %></td>
                    <td><a href="UpdateContact.jsp?contactId=<%= contact.getContactId() %>&contactName=<%= contact.getContactName() %>&contactNumber=<%= contact.getContactNumber() %>">Edit</a></td>
                    <td><a href="delete-contact?contactId=<%= contact.getContactId() %>">Delete</a></td>
                </tr>
                <%
                    count++;
                    }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>
