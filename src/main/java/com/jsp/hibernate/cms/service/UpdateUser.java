package com.jsp.hibernate.cms.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.hibernate.cms.config.SingletonDao;
import com.jsp.hibernate.cms.entity.User;
@WebServlet("/update-profile")
public class UpdateUser extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		User user = (User)req.getSession().getAttribute("user");
		
		user.setUsername(username);
		user.setEmail(email);
		user.setPassword(password);
		
		boolean result = SingletonDao.getUserDao().updateUser(user);
		if(result) {
			HttpSession session = req.getSession();
			session.setAttribute("user", user);
			resp.sendRedirect("Home.jsp");
		}else {
			req.setAttribute("error", "Update unsuccessfull!!!Please try again.");
			req.getRequestDispatcher("UpdateUser.jsp").forward(req, resp);
		}
	}
	

}
