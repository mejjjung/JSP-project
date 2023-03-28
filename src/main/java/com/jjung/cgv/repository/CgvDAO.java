package com.jjung.cgv.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.jjung.cgv.dto.CgvDTO;
import com.jjung.cgv.utils.DBHelper;

public class CgvDAO implements ICgvDAO {

	private DBHelper dbHelper;
	private Connection conn;
	
	public CgvDAO() {
		dbHelper = new DBHelper();
		conn = dbHelper.getConnection();
	}
	
	
	@Override
	public CgvDTO select(String userid, String password) {
		CgvDTO resultUser = null;
	    String strQuery = "SELECT * FROM cgv WHERE userid = ? AND password = ?";
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    System.out.println(userid + password);
	    try {
	        pstmt = conn.prepareStatement(strQuery);
	        pstmt.setString(1, userid); // 첫 번째 파라미터 값 설정
	        pstmt.setString(2, password); // 두 번째 파라미터 값 설정
	        rs = pstmt.executeQuery();
	        while (rs.next()) {
	        	CgvDTO dto = new CgvDTO(userid, password);
	            dto.setUserid(rs.getString("userid"));
	            dto.setPassword(rs.getString("password"));
	            resultUser = dto;
	            // password = rs.getString("password");
	            // String username = rs.getString("username");
	            // String phone = rs.getString("phone");
	            // String email = rs.getString("email");
	           
	        }
	    } catch (Exception e) {
	    	System.out.println("로그인불가");
	        e.printStackTrace();
	    
	    }
	    return resultUser;
	}

	@Override
	public int insert(String userid, String password, String username, String phone, String email) {
		int resultCount = 0;
		String queryStr = " INSERT INTO cgv(userid, password, username, phone, email) "
				+ " VALUES(?,?,?,?,?) ";
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(queryStr);
			pstmt.setString(1, userid);
			pstmt.setString(2, password);
			pstmt.setString(3, username);
			pstmt.setString(4, phone);
			pstmt.setString(5, email);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		return resultCount;
	}

	@Override
	public void delete() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update() {
		// TODO Auto-generated method stub
		
	}

}
