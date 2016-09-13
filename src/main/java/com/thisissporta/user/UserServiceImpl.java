package com.thisissporta.user;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserDAO udao;
	
	public void insert(User p) {
		udao.insert(p);
	}

	public void update(User p) {
		udao.update(p);
	}

	public void delete(int pid) {
		udao.delete(pid);
	}

	public User getUser(int pid) {
		
		return udao.getUser(pid);
	}

	public List<User> listAll() {
		
		return udao.listAll();
	}
	

}
