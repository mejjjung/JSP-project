<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body {
	margin : 50px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	}

	
	h3 {
		color: #B83626;
	}
	
	a:hover{
		color: red;
	}
		
</style>
</head>
<body>
	<img alt="" src="images/movieIcon.png">
	<h3>회원가입이 성공적으로 완료되었습니다.</h3>
	<p>이제부터 메가박스에서 제공하는 다양한 멤버십 혜택을 이용하실 수 있습니다.</p>
	<a href = "connector?action=login">로그인 페이지</a>
</body>
</html>