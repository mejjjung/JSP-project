package com.jjung.user.repository;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.jjung.user.dto.MovieDTO;
import com.jjung.user.utils.DBHelper;

public class MovieDAO implements IMovieDAO {

	private DBHelper dbHelper;
	private Connection conn;
	
	public MovieDAO() {
		dbHelper = new DBHelper();
		conn = dbHelper.getConnection();
	}
	
	@Override
	public ArrayList<MovieDTO> select() {
		
		ArrayList<MovieDTO> list = new ArrayList<>();
		
		String strQuery = " SELECT * FROM movie ";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(strQuery);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int id = rs.getInt("id");
				String img = rs.getString("img");
				String movieName = rs.getString("movieName");
				MovieDTO dto = new MovieDTO(id, img, movieName);
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}

	@Override
	public ArrayList<MovieDTO> movie(String movieName) {
		ArrayList<MovieDTO> search = new ArrayList<>();
		
		String strQuery = " SELECT * FROM movie WHERE movieName LIKE ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(strQuery);
			pstmt.setString(1, "%"+movieName+"%");
//			System.out.println(pstmt);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int id = rs.getInt("id");
				String img = rs.getString("img");
				String movie = rs.getString("movieName");
				MovieDTO dto = new MovieDTO(id, img, movie);
				search.add(dto);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return search;
	}



}
	

