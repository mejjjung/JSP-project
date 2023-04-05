<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String userid = (String)session.getAttribute("userid");
	if(userid == null) {%>
		<jsp:include page = "/layout/header.jsp" />
	<%} else { %>
		<jsp:include page = "/layout/loginHeader.jsp" />
	<%} %>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style>

.movieList {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
}

.movie {
	display:center;
	margin-left: 3vw;
}

  .movie p {
    text-align: center;
    font-size: large;
    margin: 10px;
  }
  
.search {
	margin: 20px;
	display: flex;
	justify-content: flex-end; 
	
}

input {
	margin: 3px;
	padding:10px;
	border-radius: 10px;
}


@media screen and (max-width: 1200px) {
	.movieList {
		display: flex;
		flex-wrap: wrap;
	}
	.movie {
		margin-left: 3vw;
		font-size: 10px;
	}
	.movie>img {
		width: 20vw;
		height: 40vh;
	}
}
</style>
<body>

	<div>
		<form action="/megaBox/SearchServlet" method="get">
			<input type="hidden" name="action" value="search">
			<div class="search">
				<input type="text" id="search" name="search"placeholder="영화 제목을 입력하세요"> 
					<input type="submit" value="검색">
			</div>
		</form>
	</div>
	<div class="movieList">
		<c:forEach var="list" items="${list }">
			<div class="movie">
				<img src="/${list.img }" />
				<p>${list.movie }</p>
			</div>
		</c:forEach>
	</div>
</body>
</html>