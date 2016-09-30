package com.thisissporta.cart;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;


@Repository
@EnableTransactionManagement
public class CartDAOImpl implements CartDAO
{

	@Autowired
	private SessionFactory sessionFactory;
 
	@Transactional
	public SessionFactory getSessionFactory() {
		return sessionFactory.getCurrentSession().getSessionFactory();
	}

	@Transactional
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Transactional
	public Cart getCartById(int cartId) {
		List l = sessionFactory.getCurrentSession().createQuery("from Cart where ID = :id").setInteger("id", cartId).list();
		
		if( l.size() > 0 )
			return (Cart)l.get(0);
		else
			return null;
		
	}

	@Transactional
	public void update(Cart cart) {
		sessionFactory.getCurrentSession().update(cart);
	}

	@Transactional
	public void add(Cart cart)
	{
		sessionFactory.getCurrentSession().save(cart);
	}

	@Transactional
	public void delete(int p) {
		sessionFactory.getCurrentSession().createQuery("delete from Cart as p where p.ID = :id").setInteger("id", p).executeUpdate();
	}

	@Transactional
	public void deleteByProductId(int pid) {
		sessionFactory.getCurrentSession().createQuery("delete from Cart as p where p.ProductId = :id").setInteger("id", pid).executeUpdate();
	}

	@Transactional
	public List<Cart> getAllProducts() {
		return sessionFactory.getCurrentSession().createQuery("from Cart").list();
	}

	@Transactional
	public Cart getCartByUsername(String Username) {
		List l = sessionFactory.getCurrentSession().createQuery("from Cart where Username = :Username").setString("Username", Username).list();
		
		if( l.size() > 0 )
			return (Cart)l.get(0);
		else
			return null;
	}

	@Transactional
	public String checkUsername(String Username){
		List l = sessionFactory.getCurrentSession().createQuery("from Cart where Username = :Username").setString("Username", Username).list();
		
		if( l.size() == 0 )
			return "success";
		else
			return "failure";
	}

	@Transactional
	public List<Cart> getAllProduct() {
		// TODO Auto-generated method stub
		return (List<Cart>)sessionFactory.getCurrentSession().createQuery("from Cart").list();
	}
	

}
