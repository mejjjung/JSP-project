package com.jjung.cgv.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.jjung.cgv.utils.DBHelper;

public class CgvDAO implements ICgvDAO {

	private DBHelper dbHelper;
	private Connection conn;
	
	public CgvDAO() {
		dbHelper = new DBHelper();
		conn = dbHelper.getConnection();
	}
	
	
	
	@Override
	public int select(String userid, String password) {
		int result = 0;
		try {
			String strQuery = "SELECT * FROM cgv WHERE userid = ? ";
			PreparedStatement pstmt = null;
			pstmt = conn.prepareStatement(strQuery);
			pstmt.setString(1, userid);
			//conn.prepareStatement(strQuery);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next() == true) {
				String pswd = rs.getString("password");
				if(pswd.equals(password)) {
					result = 0;
				} else {
					result = 1;
				}
			} else {
				result = 2;
			} conn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
		
	}
	
	
	
	
//	@Override
//	public ArrayList<CgvDTO> select() {
//		
//		ArrayList<CgvDTO> list = new ArrayList<>();
//		
//		String strQuery = " SELECT * FROM cgv ";
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		
//		try {
//			pstmt = conn.prepareStatement(strQuery);
//			rs = pstmt.executeQuery();
//			while(rs.next()) {
//				String userid = rs.getString("userid");
//				String password = rs.getString("password");
//				String username = rs.getString("username");
//				String phone = rs.getString("phone");
//				String email = rs.getString("email");
//				CgvDTO dto = new CgvDTO(userid, password);
//				list.add(dto);
//				//System.out.println(userid);
////				if(userid.equals(Request.getpara)) {
////					System.out.println("로그인 성공하셨습니다.");
////				} else {
////					System.out.println("로그인 실패했습니다.");
////				}
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			try {
//				rs.close();
//				pstmt.close();
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
//			
//			
//		}
//		
//		
//		return list;
//	}
//	
	
	
	
	
	
//	@Override
//	public int select(String userid, String password) {
//		String strQuery = "SELECT * FROM cgv WHERE userid = ? AND password = ?";
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		int result = 0;
//	    try {
//	        pstmt = conn.prepareStatement(strQuery);
//	        pstmt.setString(1, userid); // 첫 번째 파라미터 값 설정
//	        pstmt.setString(2, password); // 두 번째 파라미터 값 설정
//	        rs = pstmt.executeQuery();
//	        while (rs.next()) {
//	        	result =1;
//	        }
//	    } catch (SQLException e) {
//	        e.printStackTrace();
//	    } finally {
//	        try {
//	            rs.close();
//	            pstmt.close();
//	        } catch (SQLException e) {
//	            e.printStackTrace();
//	        }
//	    }
//	    return result;
//	}

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
