package com.jjung.user.repository;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.jjung.user.dto.UserDTO;
import com.jjung.user.utils.DBHelper;

public class UserDAO implements IUserDAO {

	private DBHelper dbHelper;
	private Connection conn;

	public UserDAO() {
		dbHelper = new DBHelper();
		conn = dbHelper.getConnection();
	}

	@Override
	public UserDTO select(String userid, String password) {
		UserDTO dto = null;
		String strQuery = "SELECT * FROM user WHERE userid = ? AND password = ?  ";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(strQuery);
			pstmt.setString(1, userid);
			pstmt.setString(2, password);
			// conn.prepareStatement(strQuery);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("id");
				String userId = rs.getString("userid");
				String username = rs.getString("username");
				String userPassword = rs.getString("password");
				String phone = rs.getString("phone");
				String email = rs.getString("email");
				
				dto = new UserDTO(id, userId, userPassword, username, phone, email);
				
				dto.setId(id);
				dto.setUserid(userId);
				dto.setPassword(userPassword);
				dto.setUsername(username);
				dto.setPhone(phone);
				dto.setEmail(email);
				
			}	
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return dto;
	}

	@Override
	public int insert(String userid, String password, String username, String phone, String email) {
		int resultCount = 0;
		String queryStr = " INSERT INTO user(userid, password, username, phone, email) " + " VALUES(?,?,?,?,?) ";
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
	public int delete(String userid, String password) {
		int resultRowCount = 0;
		String queryStr = " DELETE FROM user WHERE userid = ? AND password=?";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(queryStr);
			pstmt.setString(1, userid);
			pstmt.setString(2, password);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return resultRowCount;
	}

	@Override
	public int update(String password, String username, String phone, String email, String userid) {
		String queryStr = " UPDATE user SET password = ?,username = ?,phone = ?, email = ? " + " WHERE userid = ? ";
		int resultRowCount = 0;
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(queryStr);
			pstmt.setString(1, password);
			pstmt.setString(2, username);
			pstmt.setString(3, phone);
			pstmt.setString(4, email);
			pstmt.setString(5, userid);
			resultRowCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return resultRowCount;
	}

}
