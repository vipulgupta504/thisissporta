package com.thisissporta.userrole;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

@Repository
@EnableTransactionManagement
public class UserRoleDAOImpl implements UserRoleDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public void insert(UserRole u) {
		sessionFactory.getCurrentSession().save(u);
	}

	@Transactional
	public void update(UserRole u) {
		sessionFactory.getCurrentSession().update(u);
	}

	@Transactional
	public void delete(int uid) {
		sessionFactory.getCurrentSession().createQuery("delete from  UserRole p where p.id = :id").setInteger("id", uid).executeUpdate();
	}

	@Transactional
	public UserRole getUserRole(int uid) {
		
		List<UserRole> list = sessionFactory.getCurrentSession().createQuery("from UserRole p where p.id = :id").setInteger("id", uid).list();
		
		if( !list.isEmpty() )
			return list.get(0);
		else
			return null;
	}

	@Transactional
	public List<UserRole> listAll() {
		
		List<UserRole> list = sessionFactory.getCurrentSession().createQuery("from UserRole p").list();
		
		return list;
	}
	
   @Transactional
   public void generateUserRoles() {
		
		//
		
		try
		{
			UserRole ur ;//= new UserRole("USER" , 1);
			
			ur = this.getUserRole(1);
			
			if( ur == null )
			{
				ur = new UserRole("USER" , 1);
				
				this.insert(ur);
			}
			
			ur = this.getUserRole(2);
			
			if( ur == null )
			{
				ur = new UserRole("ADMIN" , 2);
				
				this.insert(ur);
			}
		}
		catch( Exception e )
		{
			e.printStackTrace();
		}
		
		//
		
			}
		

}