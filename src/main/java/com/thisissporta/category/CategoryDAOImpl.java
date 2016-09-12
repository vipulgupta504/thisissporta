package com.thisissporta.category;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

@Repository
@EnableTransactionManagement
public class CategoryDAOImpl implements CategoryDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public void insert(Category c) {
		sessionFactory.getCurrentSession().save(c);
	}

	@Transactional
	public void update(Category c) {
		sessionFactory.getCurrentSession().update(c);
	}

	@Transactional
	public void delete(int cid) {
		sessionFactory.getCurrentSession().createQuery("delete from Category c where c.id = :id").setInteger("id", cid).executeUpdate();
	}

	@Transactional
	public Category getCategory(int cid) {
		
		List<Category> list = sessionFactory.getCurrentSession().createQuery("from Category c where c.id = :id").setInteger("id", cid).list();
		
		if( !list.isEmpty() )
			return list.get(0);
		else
			return null;
	}

	@Transactional
	public List<Category> getAllCategories() {
		
		List<Category> list = sessionFactory.getCurrentSession().createQuery("from Category c").list();
		
		return list;
	}

}
