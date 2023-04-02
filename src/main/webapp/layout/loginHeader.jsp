<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/megaBox/css/header.css">
</head>
<body>
<header>
		<div class = "header">
		<div class = "home-menu" style="color: white">
		${sessionScope.username}님
		</div>
			<div class = "home-menu">
				<label>영화</label>
			</div>
			<div class = "home-menu">
				<label>예매</label>
			</div>
			<div class = "home-menu">
				<label>극장</label>
			</div>		
			<div class = "header-logo">
				<a href="/megaBox/index.jsp"><img src="images/box.png" alt=""></a>
			</div>
			<div class = "home-menu">
				<a href = "logout.jsp">
				<label>로그아웃</label>
				</a>
			</div>
			<div class = "home-menu">
				<a href = "MyPage.jsp">
				<label>MyPage</label>
				</a>
		</div>
			<div class = "home-menu">
				<a href = "#">
				<span class="material-symbols-outlined" style = "color: white">search</span>
				</a>
			</div>
		</div>	
	</header>
