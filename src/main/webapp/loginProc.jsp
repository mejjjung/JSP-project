<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String userId = request.getParameter("userId");
	String password = request.getParameter("password");
	String remember = request.getParameter("remember");
	
	if (remember != null) {
		Cookie cookie = new Cookie("userId", userId);
		cookie.setMaxAge(60 * 60 * 24 * 7); // 7일간 유지
		response.addCookie(cookie);
	} else {
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie c : cookies) {
		if (c.getName().equals("userId")) {
			c.setMaxAge(0);
			response.addCookie(c);
			break;
		}
			}
		}
	}
%>