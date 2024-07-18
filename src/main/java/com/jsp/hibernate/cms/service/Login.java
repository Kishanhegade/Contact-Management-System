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

@WebServlet("/login")
public class Login extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		User user = SingletonDao.getUserDao().findUserByEmailAndPassword(email, password);
		
		if(user!=null) {
			HttpSession session = req.getSession(true);
			session.setAttribute("user", user);
//			req.getRequestDispatcher("Home.jsp").forward(req, resp);
			resp.sendRedirect("Home.jsp");
		}else {
			req.setAttribute("error","Login unsuccessfull!!!Incorrect username or password");
			req.getRequestDispatcher("login.jsp").forward(req, resp);;
		}
		
	}

}
