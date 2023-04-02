<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page = "/layout/header.jsp" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style type="text/css">


body {
	display: flex;
	justify-content: center;
	flex-direction: column;
	align-items: center;
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
	background-color: black;
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

input[type="submit"] {
	background-color: black;
	color : white;
	padding: 10px;
	border-radius: 10px;
	cursor: pointer;
}

</style>

	<form action="/megaBox/insertServlet?action=insert"  method = "post">
		<h3>회원 정보를 입력해 주세요</h3>
		<div class = "join-box">
			<table>
				<tr>
					<th><label for = "userid">아이디</label></th>
					<td><input type = "userid" id = "userid" name = "userid" placeholder="아이디를 입력해주세요" required="required"></td>
				</tr>
				<tr>
					<th><label for = "password">비밀번호</label></th>
					<td><input type = "password"  id = "password" name = "password" placeholder="비밀번호를 입력해주세요" required="required"></td>
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
			</div>
			<div>
				<input type = "submit" class = "join-button"   value = "회원가입">
				</div>
			</form>
			
			
			

</body>
</html>