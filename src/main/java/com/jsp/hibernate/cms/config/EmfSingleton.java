package com.jsp.hibernate.cms.config;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class EmfSingleton {
	
	private EmfSingleton() {
		//private Constructor
	}
	
	private static  EntityManagerFactory factory;

	public static EntityManagerFactory getFactory() {
		if(factory==null)
			factory = Persistence.createEntityManagerFactory("mysql_config");
		return factory;
	}

	
	
	

}
