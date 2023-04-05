package com.megaBox.user.repository;


import com.megaBox.user.dto.UserDTO;

public interface IUserDAO {

	
	UserDTO select(String userid, String password);
	int insert(String userid, String password, String username, String phone, String email);
	int delete(String userid, String password);
	int update(String password, String username, String phone, String email, String userid);
	
}
