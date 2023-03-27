<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page errorPage="errorPage.jsp"%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.head {
	display: flex;
}

.icon>input{
	display : flex;
	padding: 20px;
	margin: 20px;
}


.cgv {
	display: flex;
}

.cgv>li{	
	position: relative;
	padding-right: 10px;
}

.cgv>li>a{
	padding: 0 40px;
	line-height: 100px;
	text-decoration: none;
	color : black;
}

.cgv>li>a:hover{
	font-size: bold;
	color: white;
	background-color: tomato;
}

.cgv:hover .cgv-2 {
	height: 135px;
	position: absolute; 
	
}


.cgv-2 {
	overflow: hidden;
	width: 100%;
	padding: 0;
	background: #fff;
	height: 0px; 
}

.cgv-2 a {
	display: block;
	padding: 5px 0;
	text-align: center;
	text-decoration: none;
	color : black;
}

.cgv-2 a:hover{
	background: tomato;
	color : white;
}

li {
	list-style: none;
}


</style>	
</head>
<body>
	<form action="login.jsp">
	<img src="images/bn.jpg" style="width: 1500px;">
	<input type = "submit" value = "로그아웃">
	
	</form>
	<div class = "head">
	<a href = "index.jsp">
	<input type = "image" name = "button" src = "images/cgv.png" style = "width: 120px;">
	</a>
	<label> CULTUREFLEX</label>
	<div class = "icon">
	<a href = "login.jsp">
	<input type = "image" name = "login" src = "images/loginbutton.png">
	<label>로그인</label>
	</a>
	
	<a href = "join.jsp">
	<input type = "image" name = "join" src = "images/joinbutton.png">
	<label>회원가입</label>
	</a>
	
	<a href = "#">
	<input type = "image" name = "mycgv" src = "images/mycgv.png">
	<label>MY CGV</label>
	</a>
	
	<a href = "#">
	<input type = "image" name = "customer" src = "images/ccc.png">
	<label>고객센터</label>
	</a>
	</div>
	

	</div>

	<nav>
		<ul Class = "cgv">
			<li>
				<a href = "#">영화</a>
			<ul Class = "cgv-2">
				<li><a href = "#">무비차트</a></li>
				<li><a href = "#">아트하우스</a></li>
				<li><a href = "#">ICECON</a></li>
			</ul>
			</li>
		
			<li>
				<a href = "#">극장</a>
			<ul Class = "cgv-2">
				<li><a href = "#">CGV 극장</a></li>
				<li><a href = "#">특별관</a></li>
			</ul>
			</li>
			
			<li>
				<a href = "#">예매</a>
			<ul Class = "cgv-2">
				<li><a href = "#">빠른 예매</a></li>
				<li><a href = "#">상영스케줄</a></li>
			</ul>
			</li>
			
			<li>
				<a href = "#">스토어</a>
			<ul Class = "cgv-2">
				<li><a href = "#">팝콘</a></li>
				<li><a href = "#">음료</a></li>
				<li><a href = "#">스낵</a></li>
			</ul>
			</li>
			
			<li>
				<a href = "#">이벤트</a>
			<ul Class = "cgv-2">
				<li><a href = "#">SPECIAL</a></li>
				<li><a href = "#">멤버십/클럽</a></li>
				<li><a href = "#">제휴할인</a></li>
			</ul>
			</li>
			
			<li>
				<a href = "#">혜택</a>
			<ul Class = "cgv-2">
				<li><a href = "#">CGV 할인정보</a></li>
				<li><a href = "#">CLUB 서비스</a></li>
				<li><a href = "#">VIP 라운지</a></li>
			</ul>
			</li>
			
		</ul>
	</nav>
		
	<img src="images/movie1.png">
</body>
</html>