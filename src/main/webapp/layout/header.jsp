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
			<div class = "home-menu">
				<a href = "/megaBox/movieList">
				<label>영화</label>
				</a>
			</div>
			<div class = "home-menu">
				<label>예매</label>
			</div>
			<div class = "home-menu">
				<label>극장</label>
			</div>		
			<div class = "header-logo">
				<a href="connector?action=index"><img src="images/box.png" alt=""></a>
			</div>
			<div class = "home-menu">
				<a href = "connector?action=login">
				<label>로그인</label>
				</a>
			</div>
			<div class = "home-menu">
				<a href = "connector?action=join">
				<label>회원가입</label>
				</a>
			</div>
			<div class = "home-menu">
				<a href = "connector?action=search">
				<span class="material-symbols-outlined" style = "color: white">search</span>
				</a>
			</div>
		</div>
	</header>
	
