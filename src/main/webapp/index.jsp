<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userid = (String)session.getAttribute("userid");
	if(userid == null) {%>
		<jsp:include page = "/layout/header.jsp" />
	<%} else { %>
		<jsp:include page = "/layout/loginHeader.jsp" />
	<%} %>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style type="text/css">


	body {
		width:100%;
		display: flex;
		flex-direction: column;
		justify-content: center;
	}
	

	
	section {
		flex : 1 ;
		display: flex;
		justify-content: center;
		flex-direction: column;
		
	}
	
.section-title h4 {
  color: white;
  text-align: center;
}
	

	.main-container {
	display: flex;
	justify-content: center;
	flex-direction: column;
	background-color: #0E122C;
	
	}
	
	.main-container div {
	margin: 50px;
	}
	
	  section-title-title {
		border: 3px solid #ccc;
		margin-bottom: 20px;
	}
	
	.article {
		display: flex;
		justify-content: center;
		align-items: center;
	}
		

	.article-img {
		size: 50px;
		border-radius: 20px;
	}
	
	.article-img:hover {
		opacity: 0.2;
		
	}
	
		
	.article-movie-button {
		display : flex;
		margin: 30px;
		background-color: #4d839e;
		color : white;
		font-size : x-large;
		border : none;
		border-radius: 5px;
	}

	span {
		padding: 10px 20px;
	}


</style>
	<section>
		<div class = "main-container">
				<div class = "section-title">
					<h4 style = "color: white">박스오피스</h4>
				</div>
			
			
				<div class = "article">
					<div class = "article-movie">
						<a href = "https://www.megabox.co.kr/movie-detail?rpstMovieNo=23000600"><img alt=""  class = "article-img" src="images/movie.jpg"></a>
					</div>
					<div class = "article-movie" >
						<a href = "https://www.megabox.co.kr/movie-detail?rpstMovieNo=21003800"><img alt=""  class = "article-img" src="images/happy.jpg"></a>
					</div>
					
					<div class = "article-movie">
						<a href = "https://www.megabox.co.kr/movie-detail?rpstMovieNo=22103500"><img alt=""  class = "article-img" src="images/slamdunk.jpg"></a>
					</div>
					
					<div class = "article-movie">
						<a href = "https://www.megabox.co.kr/movie-detail?rpstMovieNo=23007600"><img alt=""  class = "article-img" src="images/dragon.jpg"></a>
					</div>
			</div>
		</div>
	</section>
<jsp:include page = "/layout/footer.jsp"/>