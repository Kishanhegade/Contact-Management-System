package com.jsp.hibernate.cms.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.hibernate.cms.config.SingletonDao;
import com.jsp.hibernate.cms.entity.Contact;

@WebServlet("/delete-contact")
public class DeleteContact extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int contactId = Integer.parseInt(req.getParameter("contactId"));
		
		Contact contact = SingletonDao.getContactDao().findContactById(contactId);
		
		boolean result = SingletonDao.getContactDao().deleteContact(contact);
		
		if(result) {
			resp.sendRedirect("manage-contact");
		}
		
	}
	
}
