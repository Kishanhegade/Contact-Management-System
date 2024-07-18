package com.jsp.hibernate.cms.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import com.jsp.hibernate.cms.config.EmfSingleton;
import com.jsp.hibernate.cms.entity.User;


public class UserDao {

	public boolean saveUser(User user) {
		EntityManager manager = EmfSingleton.getFactory().createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		try {
			transaction.begin();
			manager.persist(user);
			transaction.commit();
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}finally {
			manager.close();
		}

	}

	public boolean deleteUser(User user) {
		EntityManager manager = EmfSingleton.getFactory().createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		try {
			transaction.begin();
			manager.remove(manager.merge(user));
			transaction.commit();
			return true;
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}finally {
			manager.close();
		}
	}

	public boolean updateUser(User user) {
		EntityManager manager = EmfSingleton.getFactory().createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		try {
			transaction.begin();
			manager.merge(manager.merge(user));
			transaction.commit();
			return true;
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}finally {
			manager.close();
		}
	}

	public User findUser(int userId) {
		EntityManager manager = EmfSingleton.getFactory().createEntityManager();
		User user = manager.find(User.class, userId);
		manager.close();
		return user;
	}

	public User findUserByEmailAndPassword(String email, String password) {
		EntityManager manager = EmfSingleton.getFactory().createEntityManager();
		CriteriaBuilder builder = manager.getCriteriaBuilder();
		CriteriaQuery<User> criteriaQuery = builder.createQuery(User.class);
		Root<User> root = criteriaQuery.from(User.class);
		criteriaQuery.where(builder.equal(root.get("email"), email), builder.equal(root.get("password"), password));
		
		TypedQuery<User> query = manager.createQuery(criteriaQuery);
		try {
			User user = query.getSingleResult();
			return user;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			manager.close();
		}
		
		
	}

}
