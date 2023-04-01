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

<form action="/megaBox/boxTest?action=delete"  method = "post">
		<h3>회원 탈퇴</h3>
		<div class = "delete-box">
			<table>
				<tr>
					<th><label for = "id">아이디</label></th>
					<td><input type = "text" id = "id" name = "id"  placeholder = "회원번호를 입력해주세요"  required="required"></td>
				</tr>
			</table>
			</div>
			</form>
			<div>
				<input type = "submit" class = "delete-button"   value = "회원탈퇴하기">
			</div>
</body>
</html>