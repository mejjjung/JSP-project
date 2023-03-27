<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%

String userId = request.getParameter("userId");
String password = request.getParameter("password");

if(userId != null && password != null) {
	
	if(userId.equals("jjungme") && password.equals("0525")) {
		session.setAttribute("userId",userId);
		response.sendRedirect("index.jsp");
	} else {
		out.println("<script>alert('아이디와 비밀번호를 다시 확인해주세요'); location.href='login.jsp'</script>");
	}
}




%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style type="text/css">
*{
	padding: 0;
	margin: 0;
	border: none;
}

body {
	font-size: 14px;
	font-family: 'Roboto','sans-serif';
	display: flex;
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
	color : #6A24FE;
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
	background-color: #6A24FE;
	width: 100%;
	height: 48px;
	padding: 0 10px;
	box-sizing:border-box;
	margin-bottom: 16px;
	margin-top: 16px;
	border-radius: 6px; 
}


</style>
</head>
<body>
	<form action="loginProc.jsp" method = "post">
	<h2>Login</h2>
	<div>
		<label for = "userId">로그인</label>
		<input type = "text" name = "userId" id = "userId" required="required">
	</div>
	<div>
		<label for = "password">비밀번호</label>
		<input type = "password" name = "password" id = "password" required="required">
	</div>
	<div>
		<input type = "submit" value = "로그인">
	</div>
	<div>
		<input type = "checkbox" name = "remember" value = ""> 아이디 저장하기
	</div>
	</form>
</body>
</html>