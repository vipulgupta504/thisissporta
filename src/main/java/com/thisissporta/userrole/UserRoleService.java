package com.thisissporta.userrole;

import java.util.List;


public interface UserRoleService
{
	public void insert(UserRole u);
	public void update(UserRole u);
	public void delete(int uid);
	
	public UserRole getUserRole(int uid);
	
	public List<UserRole> listAll();
	public void generateUserRoles();
	
}

