package com.thisissporta.user;

import java.io.Serializable;

import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Size;

@Entity

public class User{
	
	@Id @GeneratedValue(strategy=GenerationType.AUTO)

private int Id;

private String Username;

private String Password;

private String CPassword;

private String Email;

private String Phone;

private String Location;

private int Role = 1;

private boolean Active = true;

public int getId() {
	return Id;
}

public void setId(int id) {
	Id = id;
}

public String getUsername() {
	return Username;
}

public void setUsername(String username) {
	Username = username;
}

public String getPassword() {
	return Password;
}

public void setPassword(String password) {
	Password = password;
}

public String getCPassword() {
	return CPassword;
}

public void setCPassword(String cPassword) {
	CPassword = cPassword;
}

public String getEmail() {
	return Email;
}

public void setEmail(String email) {
	Email = email;
}

public String getPhone() {
	return Phone;
}

public void setPhone(String phone) {
	Phone = phone;
}

public String getLocation() {
	return Location;
}

public void setLocation(String location) {
	Location = location;
}

public int getRole() {
	return Role;
}

public void setRole(int role) {
	Role = role;
}

public boolean isActive() {
	return Active;
}

public void setActive(boolean active) {
	Active = active;
}




}



