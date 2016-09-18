package com.thisissporta.userrole;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserRoleServiceImpl implements UserRoleService{

	@Autowired
	UserRoleDAO udao;
	
	public void insert(UserRole p) {
		udao.insert(p);
	}

	public void update(UserRole p) {
		udao.update(p);
	}

	public void delete(int pid) {
		udao.delete(pid);
	}

	public UserRole getUserRole(int pid) {
		
		return udao.getUserRole(pid);
	}

	public List<UserRole> listAll() {
		
		return udao.listAll();
	}

	public void generateUserRoles() {

		udao.generateUserRoles();

	}

}
