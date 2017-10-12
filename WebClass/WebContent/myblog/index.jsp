<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVO" %>    
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>2413신주연 응용수행평가</title>  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../css/blog.css">
<link rel="stylesheet" type="text/css" href="../css/footer.css">
<link rel="stylesheet" href="/WebClass/css/ffooter.css">

</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span> 
	      </button>
	      
	     
	    </div>
	    <div class="collapse navbar-collapse" id="myNavbar">
	      <ul class="nav navbar-nav navbar-left">
	        <li><a href="/WebClass/myblog/index.jsp">HOME</a></li>
	      </ul>
	      
	    </div>
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    	<%@ include file="../jsp/blogmenu.jsp" %>
  	
		    <%-- 세션이 없는 경우 --%>
		    <%
					UserVO user=(UserVO)session.getAttribute("user");
					if(user==null){
		
			%>
				<ul class="nav navbar-nav navbar-right">
		    	<li><a class="text-bold text-white" style="text-decoration: none" href="/WebClass/bloglogin">Sign in</a></li>
		    	<!-- <li><span class="text-bold text-white">&nbsp; or &nbsp;</span></li>   -->
		    	<li><a class="text-bold text-white" style="text-decoration: none" href="signup.html">Sign up</a></li>
		    	</ul>
			<% } else { %>
			<%-- 세션이 있는 경우 --%>
			    <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
			    <li class="nav-item dropdown">
			      <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			    	<%= user.getName()+ "님"%>	      </a>
			      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
			      	<form action="/WebClass/blogout" method="post">
			      		<button type="submit" class="dropdown-item">Sign out</button>
			       	</form>
			       	<div class="dropdown-divider"></div>
			        <button type="button" class="dropdown-item">Action1</button>
			        <button type="button" class="dropdown-item">Action2</button>
			      </div>
			    </li>
			    </ul>
			    
			    <% } %>
		 
	    </div>
	  </div>
	</nav>
	<div id="myCarousel" class="carousel slide" data-ride="carousel"><a id="home"></a>
	  <!-- Indicators -->
	  <ol class="carousel-indicators">
	    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	    <li data-target="#myCarousel" data-slide-to="1"></li>
	    <li data-target="#myCarousel" data-slide-to="2"></li>
	  </ol>
	
	  <!-- Wrapper for slides -->
	  <div class="carousel-inner" role="listbox">
	    <div class="item active">
	      <img src="/WebClass/image/mac.jpg" alt="image">
	      <div class="carousel-caption">
	        <h3>Welcome</h3>
	        <p>Thank you for visiting my blog.</p>
	      </div> 
	    </div>
	
	    <div class="item">
	      <img src="/WebClass/image/coding.jpg" alt="image">
	      <div class="carousel-caption">
	        <h3>Welcome</h3>
	        <p>Thank you for visiting my blog.</p>
	      </div> 
	    </div>
	
	    <div class="item">
	      <img src="/WebClass/image/coding2.jpg" alt="image">
	      <div class="carousel-caption">
	        <h3>Welcome</h3>
	        <p>Thank you for visiting my blog.</p>
	      </div> 
	    </div>
	  </div>
	
	  <!-- Left and right controls -->
	  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
	    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	    <span class="sr-only">Previous</span>
	  </a>
	  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
	    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	    <span class="sr-only">Next</span>
	  </a>
	</div>	
	
	<div><a id="who"></a>
		<div class="container text-center">
			<h3>Who am I?</h3>
			<p><em>Thank you for visiting my blog.</em></p>
			<br>
			<br>
			<div class="row">
				<div class="col-sm-4">
				  <p><strong>PROFILE</strong></p><br>
				  <img src="../image/1311.jpg" class="img-circle person" alt="Random Name" width="200" height="255">
				</div>
				<div class="col-sm-4">
				  <p><strong>이름 : 신주연</strong></p><br>
				  <p class="text-left">2000년 11월 17일 생</p>
				  <p class="text-left">가족:아버지,어머니,오빠</p>
				  <p class="text-left">혈액형:O형</p>
				  <p class="text-left">장래희망:컴퓨터 프로그래머</p>
				  <p class="text-left">한국디지털미디어고등학교 2학년 재학중</p>
				</div>
				<div class="col-sm-4">
				  <p><strong>천안시 동남구 거주</strong></p><br>
				  <div id="googleMap"></div>
				</div>
			</div>
		</div>
	</div>	
	<div class="bg-1"><a id="what"></a>
		<div class="container">
	    <h3 class="text-center">내가 좋아하는 것</h3>
	    <p class="text-center">평소에 시간이 나면 자주 하는것 또는 하고싶은 취미활동<br>하면 재미있는 활동</p>
	    <ul class="list-group">
	      <li class="list-group-item"><strong>영화관람(극장에서 공포영화 보기)</strong></li>
	      <li class="list-group-item"><strong>뜨개질하기</strong></li> 
	      <li class="list-group-item"><strong>EXO노래 들으면서 힐링하기</strong></li> 
	    </ul>
	    <div class="row text-center">
	      <div class="col-sm-4">
	        <div class="thumbnail">
	          <img src="/WebClass/image/movie2.jpg" alt="Paris" width="400" height="300">
	          <br>
	          <p><strong>말할 수 없는 비밀 (Secret,2007)</strong></p>
	          <p>2008.01.10 개봉</p>
	        </div>
	      </div>
	      <div class="col-sm-4">
	        <div class="thumbnail">
	          <img src="/WebClass/image/aaa.jpg" alt="New York" width="400" height="300">
	          <br>
	          <p><strong>뜨개질하기</strong></p>
	          <p>목도리 , 모자</p> 
	        </div>
	      </div>
	      <div class="col-sm-4">
	        <div class="thumbnail">
	          <img src="/WebClass/image/EXO1.jpg" alt="San Francisco" width="400" height="300">
	          <br>
	          <p><strong>EXO</strong></p>
	          <p>'KokoBop'</p>    
	        </div>
	      </div>
	    </div>
	  </div>
	</div>
	<div><a id="dream"></a>
		<div class="container text-center">
			<h3>My dream</h3>
			<p><em>살면서 해보고 싶은 것들</em></p>
			<br>
			<div class="row">
				<div class="col-sm-4">
				  <p><strong>1.Education</strong></p><br>
				  <p>교육봉사나 멘토링 활동 등</p>
				  <p>학생들 가르쳐보기</p>	
				  <img src="/WebClass/image/study.jpg"  class="img-circle dream" alt="Random Name">
				</div>
				<div class="col-sm-4">
				  <p><strong>2.Piano</strong></p><br>
				  <p>취미생활로 피아노 배우고 그랜드피아노로 </p>
				  <p>말할 수 없는 비밀 OST 완곡하기</p>
				  <img src="/WebClass/image/piano.jpg" class="img-circle dream" alt="Random Name">
				</div>
				<div class="col-sm-4">
				  <p><strong>3.Travel</strong></p><br>
				  <p>혼자서 해외여행 가보기</p>
				  <p>(미국,영국,일본)</p>
				  <img src="/WebClass/image/travel.jpg"  class="img-circle dream" alt="Random Name">
				</div>
			</div>
		</div>
	</div>
	<footer class="text-center">
	  <a class="up-arrow" href="#home" data-toggle="tooltip" title="TO TOP">
	    <span class="glyphicon glyphicon-chevron-up"></span>
	  </a><br><br>
	  <p><strong>2413 신주연</strong></p><br>
	  <p>2학기 응용프로그래밍 [실습과제]'개인 블로그 만들기'</p> 
	</footer>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="../js/blog.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC0vDWj7h1vzLVOkmVtMbAAja-Ok1Ibg8A&callback=myMap"></script>
		
</body>
</html>
    