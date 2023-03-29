package com.jjung.cgv.repository;

public interface ICgvDAO {

	
	int select(String userid, String password);
	int insert(String userid, String password, String username, String phone, String email);
	void delete();
	void update();
	
}
