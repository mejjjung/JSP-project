<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style type="text/css">
body {
	display: flex;
	justify-content: center;
	align-items: center;
}

form {
	display:flex;
	flex-direction: column;	
}

input {
	margin: 10px;
}
</style>
</head>
<body>
	<form action="/cgv/CgvTest?action=insert"  method = "post">
		<label for = "userid">아이디  </label>
		<input type = "text" id = "userid" name = "userid" placeholder="아이디를 입력해주세요">
	
		<label for = "password">비밀번호  </label>
		<input type = "password" id = "password" name = "password" placeholder="비밀번호를 입력해주세요">
		
		<label for = "username">이름</label>
		<input type = "text" id = "username" name = "username">
		
		
		<label for = "phone">전화번호</label>
		<input type = "text" id = "phone" name = "phone">
		
		<label for = "email">이메일  </label>
		<input type = "text" id = "email" name = "email">
		
		<input type = "submit" value = "회원가입">
	</form>
</body>
</html>