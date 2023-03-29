<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%

String userid = request.getParameter("userId");
String password = request.getParameter("password");

if(userid != null && password != null) {
	
	if(userid.equals(userid) && password.equals(password)) {
		session.setAttribute("userid",userid);
		response.sendRedirect("index.jsp");
	} else {
		out.println("<script>alert('아이디와 비밀번호를 다시 확인해주세요'); location.href='login.jsp'</script>");
	}
}
%>