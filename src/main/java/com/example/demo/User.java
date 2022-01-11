package com.example.demo;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

import javax.persistence.Column;

@Entity
@Table(name="Users")
public class User {
	public User() {
	
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	private String uname;
	
	
	private String uemail;
	

	private String upassword;
	
	
	
	public long getId() {
		return id;
	}


	public void setId(long id) {
		this.id = id;
	}


	public String getUname() {
		return uname;
	}


	public void setUname(String uname) {
		this.uname = uname;
	}


	public String getUemail() {
		return uemail;
	}


	public void setUemail(String uemail) {
		this.uemail = uemail;
	}


	public String getUpassword() {
		return upassword;
	}


	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}


}
	