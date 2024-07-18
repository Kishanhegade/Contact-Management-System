

package com.jsp.hibernate.cms.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.hibernate.cms.config.SingletonDao;
import com.jsp.hibernate.cms.entity.Contact;
import com.jsp.hibernate.cms.entity.User;

@WebServlet("/manage-contact")
public class ManageContact extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user = (User)req.getSession().getAttribute("user");
		List<Contact> contacts = SingletonDao.getContactDao().findAllContactsByUser(user); 
		if(contacts!=null) {
			req.setAttribute("contacts", contacts);
			req.getRequestDispatcher("manage_contacts.jsp").forward(req, resp);
		}else {
			resp.sendRedirect("AddContact.jsp");
		}
	}

}
