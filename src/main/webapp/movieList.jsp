<%@page import="com.megaBox.user.dto.MovieDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@page import="java.util.ArrayList"%>
 <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<%
	String userid = (String)session.getAttribute("userid");
	if(userid == null) {%>
		<jsp:include page = "/layout/header.jsp" />
	<%} else { %>
		<jsp:include page = "/layout/loginHeader.jsp" />
	<%} %>
<style type="text/css">

.poster {
	margin-top: 20px;
	margin-bottom: 20px;
	display:flex;
	flex-wrap: wrap;
	justify-content: center;
}

.movie-list {
	margin: 20px;
	text-align: center;
}
p {
width: 240px;
color: #fff;
}

tr {
	box-sizing: border-box;
	padding: 10px;
}

td {
	display: flex;
	flex-direction: column;
	align-items: center;
}

.movie-list > h3 {
	color: #fff;
	margin-bottom: 10px;
}

img:hover {
	transform : scale(1.01);
}

</style>

		<div class = "poster">
		
		<c:forEach var="list"  items="${list }">
		<div class = "movie-list">
			<h3>${list.id }</h3>
			<img src="/${list.img }" />
			<p>${list.movie }</p>
		</div>
		
		</c:forEach>
		
		</div>
<jsp:include page = "/layout/footer.jsp"/>