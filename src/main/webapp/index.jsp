<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style type="text/css">
	*{
		margin: 0;
		padding: 0;
		box-sizing: border-box;
	}

	body {
		display: flex;
		justify-content: center;
	}
	
	.page-container {
		flex : 1 ;
		display: flex;
		justify-content: center;
		flex-direction: column;
		max-width: 2000px;
	}
	
	.header {
		height: 0 0 80px;
		flex : 1;
		border-bottom: 1px solid gray; 
		display: flex;
		justify-content: center;
		align-items: center;
		padding: 0px 20px;
		background-color: black;
	}
	
	.header-logo {
		height: 100px;
		width: 200px;
		align-items : center;
	}
	
	.home-menu {
		padding: 20px;
		margin-top: 50px;
	}
	
	.home-menu:hover{
		border-bottom: 2px solid white;
	}
	
	 .home-menu-menu li {
	 	display : block;
		overflow : hidden;
		width : 100%;
		color: white;
	}
	
	 .home-menu-menu li:hover {
		overflow : visible;
		width : 100%;
		color: white;
	}
	a, label{
	text-decoration: none;
	color : white;
	}
	
	.main-container {
	display: flex;
	justify-content: center;
	flex-direction: column;
	background-color: #0E122C;
	
	}
	
	.main-container div {
	margin: 50px;
	}
	
	  section-title-title {
		border: 3px solid #ccc;
		margin-bottom: 20px;
	}
	
	.article {
		display: flex;
		justify-content: center;
		align-items: center;
	}
	
	.article-img {
		size: 50px;
		border-radius: 20px;
	}
	
	.article-img:hover {
		opacity: 0.2;
		
	}
		
	.article-movie-button {
		display : flex;
		margin: 30px;
		background-color: #4d839e;
		color : white;
		font-size : x-large;
		border : none;
		border-radius: 5px;
	}

	span {
		padding: 10px 20px;
	}

</style>
</head>
<body>
	<div class = "page-container">
		<div class = "header">
			<div class = "home-menu">
				<a href = "#">
				<span class="material-symbols-outlined" style = "color: white">search</span>
				</a>
			</div>
			<div class = "home-menu">
				<label>영화</label>
				<ul class = "home-menu-menu">
					<li>전체영화</li>
					<li>무비포스트</li>
				</ul>
			</div>
			<div class = "home-menu">
				<label>예매</label>
				<ul class = "home-menu-menu">
					<li>빠른예매</li>
					<li>상영시간표</li>
				</ul>
			</div>
			<div class = "home-menu">
				<label>극장</label>
				<ul class = "home-menu-menu">
					<li>전체극장</li>
				</ul>
			</div>		
			<div class = "header-logo">
				<img alt="" src="images/megabox.png">
			</div>
			<div class = "home-menu">
				<a href = "login.jsp">
				<label>로그인</label>
				</a>
			</div>
			<div class = "home-menu">
				<a href = "join.jsp">
				<label>회원가입</label>
				</a>
			</div>
			<div class = "home-menu">
				<a href = "#">
				<label>MyPage</label>
				</a>
			</div>		
		</div>
		
	<div class = "main-container">
			<div class = "section-title">
				<h4 style = "color: white">박스오피스</h4>
			</div>
		
		
			<div class = "article">
				<div class = "article-movie">
					<a href = "movie.jsp"><img alt=""  class = "article-img" src="images/movie.jpg"></a>
					<button class = "article-movie-button"><span>예매</span></button>
				</div>
				
				<div class = "article-movie" >
					<a href = "movie2.jsp"><img alt=""  class = "article-img" src="images/happy.jpg"></a>
					<button class = "article-movie-button"><span>예매</span></button>
				</div>
				
				<div class = "article-movie">
					<a href = "movie3.jsp"><img alt=""  class = "article-img" src="images/slamdunk.jpg"></a>
					<button class = "article-movie-button"><span>예매</span></button>
				</div>
				
				<div class = "article-movie">
					<a href = "movie4.jsp"><img alt=""  class = "article-img" src="images/dragon.jpg"></a>
					<button class = "article-movie-button"><span>예매</span></button>
				</div>
		</div>
	
	</div>
</body>
</html>