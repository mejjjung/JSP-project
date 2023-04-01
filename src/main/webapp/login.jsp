
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page = "/layout/header.jsp" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style type="text/css">
*{
	padding: 0;
	margin: 0;
	border: none;
	font-size: large;
}

body {
	font-size: 14px;
	font-family: 'Roboto','sans-serif';
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

form {
	width: 450px;
	height: 450px;
	padding : 40px;
	box-sizing:border-box;
	border : 1px solid gray; 
	border-radius: 16px;
	margin: 120px;
}

h2 {
	font-size: 24px;
	color : black;
	margin-bottom: 20px;
}
input[type="text"],[type="password"] {
	width: 100%;
	height: 48px;
	padding: 10px;
	box-sizing: border-box;
	margin-bottom: 16px;
	margin-top: 16px;
	border-radius: 6px;
	background: #f8f8f8;
}

input[type="submit"] {
	margin-top: 20px;
	background-color: black;
	width: 100%;
	height: 48px;
	padding: 0 10px;
	box-sizing:border-box;
	margin-bottom: 16px;
	margin-top: 16px;
	border-radius: 6px; 
	color : white;'
}


</style>

	<form action="/megaBox/signInServlet" method ="post">
	<h2>Login</h2>
	<div>
		<label for = "userid">로그인</label>
		<input type = "text" name = "userid" id = "userid" required="required" >
	</div>
	<div>
		<label for = "password">비밀번호</label>
		<input type = "password" name = "password" id = "password" required="required" >
	</div>
	<div>
		<input type = "submit" value = "로그인">
	</div>
		<input type = "checkbox" name = "remember" value = ""> 아이디 저장하기
	</form>
</body>
</html>