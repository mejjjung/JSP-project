package com.jjung.cgv.repository;

import java.util.ArrayList;

import com.jjung.cgv.dto.CgvDTO;

public interface ICgvDAO {

	CgvDTO select(String userid, String password);
	int insert(String userid, String password, String username, String phone, String email);
	void delete();
	void update();
	
}
