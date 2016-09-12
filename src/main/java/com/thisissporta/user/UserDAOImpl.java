package com.thisissporta.user;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

@Repository
@EnableTransactionManagement
public class UserDAOImpl implements UserDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public void insert(User p) {
		sessionFactory.getCurrentSession().save(p);
	}

	@Transactional
	public void update(User p) {
		sessionFactory.getCurrentSession().update(p);
	}

	@Transactional
	public void delete(int pid) {
		sessionFactory.getCurrentSession().createQuery("delete from  User p where p.id = :id").setInteger("id", pid).executeUpdate();
	}

	@Transactional
	public User getUser(int pid) {
		
		List<User> list = sessionFactory.getCurrentSession().createQuery("from User p where p.id = :id").setInteger("id", pid).list();
		
		if( !list.isEmpty() )
			return list.get(0);
		else
			return null;
	}

	@Transactional
	public List<User> listAll() {
		
		List<User> list = sessionFactory.getCurrentSession().createQuery("from User p").list();
		
		return list;
	}
	

}
