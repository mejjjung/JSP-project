<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String userid = request.getParameter("userid");
	String password = request.getParameter("password");
	String username = request.getParameter("username");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
	
	
	try {
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/cgv?serverTimezone=Asia/Seoul";
	String dbUser = "root";
	String dbPw = "1234";
	Connection conn = DriverManager.getConnection(url,dbUser,dbPw);
	String sql = " INSERT INTO user(userid, password, username, phone, email) VALUES (?, ?, ?, ?, ?) ";
	PreparedStatement  pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, userid);
	pstmt.setString(2, password);
	pstmt.setString(3, username);
	pstmt.setString(4, phone);
	pstmt.setString(5, email);
	pstmt.executeUpdate();
	
	conn.close();
	
	response.sendRedirect("joinOk.jsp");
	
	} catch(Exception e) {
		e.printStackTrace();
	}




%>