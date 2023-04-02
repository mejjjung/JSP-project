<%@ page language="java" contentType="text/html; charset=UTF-8"
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

.update-box {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
}

.delete-button {
	margin-top: 10px;
}

input[type="submit"] {
	background-color: black;
	color: white;
	padding: 10px;
	border-radius: 10px;
	cursor: pointer; 
}

h3 {
	margin-bottom: 10px;
}
</style>

<form action="/megaBox/deleteServlet?action=delete"  method = "post">
	<h3>회원 탈퇴</h3>
	<div class = "delete-box">
		<table>
			<tr>
				<th><label for = "userid">아이디</label></th>
				<td><input type = "text" id = "userid" name = "userid"  placeholder = "아이디를 입력해주세요"  required="required"></td>
			</tr>
			<tr>
				<th><label for = "password">패스워드</label></th>
				<td><input type = "password" id = "password" name = "password"  placeholder = "비밀번호를 입력해주세요"  required="required"></td>
			</tr>
		</table>
	</div>
	<div>
		<input type = "submit" class = "delete-button"   value = "회원탈퇴하기">
	</div>
</form>

</body>
</html>
