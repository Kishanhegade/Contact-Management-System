package com.jsp.hibernate.cms.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.hibernate.cms.config.SingletonDao;
import com.jsp.hibernate.cms.entity.Contact;
import com.jsp.hibernate.cms.entity.User;
@WebServlet("/add-contact")
public class AddContact extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("user");
		String contactName =  req.getParameter("contactName");
		long contactNumber = Long.parseLong(req.getParameter("contactNumber"));
		
		Contact contact = new Contact();
		contact.setContactName(contactName);
		contact.setContactNumber(contactNumber);
		contact.setUser(user);
		boolean result = SingletonDao.getContactDao().saveContact(contact);
		if(result) {
			resp.sendRedirect("Home.jsp");
		}else {
			req.setAttribute("error", "Transaction unsuccessfull!!! try again");
			req.getRequestDispatcher("AddContact.jsp").forward(req, resp);
		}
	}

}
