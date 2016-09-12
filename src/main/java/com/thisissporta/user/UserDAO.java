package com.thisissporta.user;
import java.util.List;

public interface UserDAO
{
	public void insert(User u);
	public void update(User u);
	public void delete(int uid);
	
	public User getUser(int uid);
	
	public List<User> listAll();
	
}

