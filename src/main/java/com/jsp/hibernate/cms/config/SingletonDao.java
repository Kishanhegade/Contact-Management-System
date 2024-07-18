package com.jsp.hibernate.cms.config;

import com.jsp.hibernate.cms.dao.ContactDao;
import com.jsp.hibernate.cms.dao.UserDao;

public class SingletonDao{
	
	private SingletonDao() {
		
	}
	
	public static synchronized UserDao getUserDao() {
		if(userDao==null)
			userDao = new UserDao();
		return userDao;
	}
	public static synchronized ContactDao getContactDao() {
		if(contactDao==null)
			contactDao = new ContactDao();
		return contactDao;
	}

	private static UserDao userDao;
	private static ContactDao contactDao;

}
