<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body {
	display: flex;
	justify-content : center;
	align-items: center;
	flex-direction: column;
	}
	
	a {
	border : 1px solid black;
	padding : 5px;
	background-color : red;
	border-radius : 5px;
	text-decoration: none;
	color : black;
	}
	
	a:hover{
	background-color: yellow;
	}
</style>
</head>
<body>
	<img alt="error 이미지" src="/megaBox/images/error.png">
	<p>요청하신 페이지를 처리 중에 오류가 발생했습니다. 서비스 이용에 불편을 드려 죄송합니다.</p>
	<p>입력하신 주소가 정확한지 확인 후 다시 시도해 주시길 바랍니다.</p>
	<a href = "index.jsp">back</a>
</body>
</html>