dkfkTH<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page = "/layout/loginHeader.jsp" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style type="text/css">

body {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
}

form {
	display:flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	margin: 20px;	
	font-size: 20px;
}

table {
	border-collapse: collapse;
	border-bottom: 1px solid #ccc;
	border-top: 1px solid #ccc;
}

th {
	width:100px;
	height:50px;
	background-color: #eee;
	border-bottom: 1px solid #ccc;
}

td {
	width:300px;
	height:50px;
	border-bottom: 1px solid #ccc;
}
input {
	margin: 10px;
}

.update-box {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
}

.update-button {
	margin-top: 30px;
}

.btn {
	margin: 10px;
}

input[type="submit"] {
	background-color: black;
	color : white;
	padding: 10px;
	border-radius: 10px;
	cursor: pointer;
}

button[type="button"] {
	background-color: black;
	color: white;
	padding: 10px;
	border-radius: 10px;
	cursor: pointer; 
	
}
</style>

	<form action="/megaBox/userTest?action=update"  method = "post">
		<h3>개인 정보 수정</h3>
		<div class = "update-box">
			<table>
				<tr>
					<th><label for = "userid">아이디</label></th>
					<td><input type = "userid"  id = "userid" name = "userid" required="required"></td>
					
				</tr>
				<tr>
					<th><label for = "password">비밀번호</label></th>
					<td><input type = "password"  id = "password" name = "password" required="required"></td>
				</tr>
				<tr>
					<th><label for = "username">이름</label></th>
					<td><input type = "text" id = "username" name = "username" required="required"></td>
				</tr>
				<tr>
					<th><label for = "phone">전화번호</label></th>
					<td><input type = "text"  id = "phone" name = "phone" required="required"></td>
				</tr>
				<tr>
					<th><label for = "email">이메일</label></th>
					<td><input type = "email" id = "email" name = "email"  required="required"></td>
				</tr>			
			</table>
				<input type = "submit" class = "update-button"   value = "회원수정하기">
			<div class = "btn">
			<button type="button" onclick="location.href='delete.jsp' ">탈퇴하기</button>
			<button type="button" onclick="location.href='index.jsp' ">home</button>
			</div>
			</div>
			</form>
		
</body>
</html>