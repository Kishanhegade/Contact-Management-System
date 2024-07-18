package com.jsp.hibernate.cms.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.hibernate.cms.config.SingletonDao;
import com.jsp.hibernate.cms.entity.Contact;
@WebServlet("/update-contact")
public class UpdateContact extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int contactId = Integer.parseInt(req.getParameter("contactId"));
		String contactName =  req.getParameter("contactName");
		long contactNumber = Long.parseLong(req.getParameter("contactNumber"));
		
		Contact contact = SingletonDao.getContactDao().findContactById(contactId);
		contact.setContactName(contactName);
		contact.setContactNumber(contactNumber);
		
		boolean result = SingletonDao.getContactDao().updateContact(contact);
		if(result) {
			resp.sendRedirect("manage-contact");
		}
		
	}
}
