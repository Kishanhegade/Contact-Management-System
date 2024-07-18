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

@WebServlet("/delete-profile")
public class DeleteUser extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("user");
		boolean result = SingletonDao.getUserDao().deleteUser(user);
		if(result) {
			session.invalidate();
			resp.sendRedirect("Home.jsp");
		}
	}

}
