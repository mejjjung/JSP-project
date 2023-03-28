package com.jjung.cgv.dto;

public class CgvDTO {
	
	private int id;
	private String userid;
	private String password;
	private String username;
	private String phone;
	private String email;
	
	public CgvDTO(String userid, String password, String username, String phone, String email) {
		super();
		this.userid = userid;
		this.password = password;
		this.username = username;
		this.phone = phone;
		this.email = email;
	}

	
	
	public CgvDTO(String userid, String password) {
		super();
		this.userid = userid;
		this.password = password;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
	
}
