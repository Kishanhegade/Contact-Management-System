package com.jsp.hibernate.cms.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import com.jsp.hibernate.cms.config.EmfSingleton;
import com.jsp.hibernate.cms.entity.Contact;
import com.jsp.hibernate.cms.entity.User;

public class ContactDao {

	public boolean saveContact(Contact contact) {
		EntityManager manager = EmfSingleton.getFactory().createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		try {
			transaction.begin();
			manager.persist(contact);
			transaction.commit();
			return true;
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}finally {
			manager.close();
		}
	}

	public boolean deleteContact(Contact contact) {
		EntityManager manager = EmfSingleton.getFactory().createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		try {
			transaction.begin();
			manager.remove(manager.merge(contact));
			transaction.commit();
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}finally {
			manager.close();
		}


	}

	public boolean updateContact(Contact contact) {
		EntityManager manager = EmfSingleton.getFactory().createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		try {
			transaction.begin();
			manager.merge(contact);
			transaction.commit();
			return true;
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}finally {
			manager.close();
		}
	}

	public Contact findContactById(int contactId) {
		EntityManager manager = EmfSingleton.getFactory().createEntityManager();
		Contact contact = manager.find(Contact.class, contactId);
		manager.close();
		return contact;
	}
	public List<Contact> findAllContactsByUser(User user){
		EntityManager manager = EmfSingleton.getFactory().createEntityManager();
		TypedQuery<Contact> query = manager.createQuery("from Contact where user = :user", Contact.class);
		query.setParameter("user",user);
		List<Contact> contacts = query.getResultList();
		manager.close();
		return contacts;
	}
}
