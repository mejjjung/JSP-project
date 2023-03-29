<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	display: flex;
	justify-content: center;
}

.page-container {
	flex: 1;
	display: flex;
	justify-content: center;
	flex-direction: column;
}

.header {
	height: 0 0 80px;
	flex: 1;
	border-bottom: 1px solid gray;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 0px 20px;
	background-color: black;
}

.header-logo {
	height: 100px;
	width: 150px;
	align-items: center;
}

ul li {
	list-style: none;
}
/* a태그에 텍스트 밑줄을 없애고 색상을 #333 */
a {
	text-decoration: none;
	color: white;
}
/* 글자크기를 16px 맑은 고딕 굵게하고 width넓이 700, 높이 50만큼 배경색은 #ccc, 글자색은 검정색, 라인높이50px
menu박스 가운데정렬, 글자가운데 정렬 */
#menu {
	width: 1000px;
	height : 90px;
	color: black;
	line-height: 50px;
	margin: 0 auto;
	text-align: center;
}

/* menu태그 자식의 ul의 자식 li를 왼쪽정렬과 넓이 140설정 */
#menu>ul>li {
	float: left;
	width: 190px;
	margin : 40px 0;
	position: relative;
}

#menu>ul>li>ul {
	width: 130px;
	display: none;
	position: absolute;
	font-size: 14px;
	background: skyblue;
}

#menu>ul>li:hover>ul {
	display: block;
}

.article {
	display: flex;
	justify-content: center;
	align-items: center;
}

.article-movie-button {
	display: flex;
	margin: 30px;
	background-color: #4d839e;
	color: white;
	font-size: x-large;
	border: none;
	border-radius: 5px;
}

span {
	padding: 10px 20px;
}

.home-menu {
	display: flex;
}

.home-menu>li {
	position: relative;
	padding-right: 10px;
}

.home-menu>li>a {
	padding: 0 40px;
	line-height: 100px;
	text-decoration: none;
	color: black;
}

.home-menu>li>a:hover {
	font-size: bold;
	color: white;
	background-color: tomato;
}

.home-menu:hover .home-menu {
	height: 135px;
	position: absolute;
}

.menu-bar {
	width: 100%;
	padding: 0;
	background: #fff;
	height: 0px;
}

.menu-bar a {
	display: block;
	padding: 5px 0;
	text-align: center;
	text-decoration: none;
	color: black;
}

.menu-bar a:hover {
	overflow: visible;
	background: tomato;
	color: white;
}
</style>
</head>
<body>
	<div class="page-container">
		<div class="header">
			<div id="menu">
				<ul>
					<li><a href="#">영화</a>
						<ul>
							<li><a href="#">전체영화</a></li>
							<li><a href="#">무비포스트</a></li>
						</ul></li>
					<li><a href="#">예매</a>
						<ul>
							<li><a href="#">빠른예매</a></li>
							<li><a href="#">상영시간표</a></li>
						</ul></li>
					<li><a href="#">극장</a>
						<ul>
							<li><a href="#">전체극장</a></li>
							<li><a href="#">특별관</a></li>
						</ul></li>
						<li><a href="#"><img alt="" src="images/megabox.png"></a></li>
						<li><a href="#">로그인</a></li>
						<li><a href="#">회원가입</a></li>
						<li><a href="#">MyPage</a></li>
				</ul>
			</div>





		</div>

		<div class="main-container">
			<div class="section-title">
				<h4 style="color: white">박스오피스</h4>
			</div>


			<div class="article">
				<div class="article-movie">
					<img alt="" src="images/movie.jpg">
					<button class="article-movie-button">
						<span>예매</span>
					</button>
				</div>

				<div class="article-movie">
					<img alt="" class="article-img" src="images/happy.jpg">
					<button class="article-movie-button">
						<span>예매</span>
					</button>
				</div>

				<div class="article-movie">
					<img alt="" class="article-img" src="images/slamdunk.jpg">
					<button class="article-movie-button">
						<span>예매</span>
					</button>
				</div>

				<div class="article-movie">
					<img alt="" class="article-img" src="images/dragon.jpg">
					<button class="article-movie-button">
						<span>예매</span>
					</button>
				</div>
			</div>

		</div>
</body>
</html>