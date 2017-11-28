<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVO" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Home</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<!-- Bootstrap core CSS -->
<link href="/TravelGuide/css/bootstrap.min.css" rel="stylesheet">
<script src="/TravelGuide/js/ie-emulation-modes-warning.js"></script>
<link href="/TravelGuide/css/carousel.css" rel="stylesheet">
</head>
<body>
  		
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div>
  	<%@ include file="menu.jsp" %>
    <%-- 세션이 없는 경우 --%>
	<c:if test="${user==null}">
    	<a class="text-bold text-white" style="text-decoration: none" href="${contextPath}/jsp/login.jsp">Sign in</a>
    	<span class="text-bold text-white">&nbsp; or &nbsp;</span>
    	<a class="text-bold text-white" style="text-decoration: none" href="${contextPath}/jsp/signup.jsp">Sign up</a>
    </c:if>
   
	<%-- 세션이 있는 경우 --%>
    <c:if test="${!empty user}">
	    <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
	    <li class="nav-item dropdown">
	      <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	   		${user.name}님</a>
	      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
	      	<form action="${contextPath}/logout.do" method="post">
	      		<button type="submit" class="dropdown-item">Sign out</button>
	       	</form>
	       	<div class="dropdown-divider"></div>
	        <button type="button" class="dropdown-item">Action1</button>
	        <button type="button" class="dropdown-item">Action2</button>
	      </div>
	    </li>
	    </ul>
	    
	    </c:if>
  </div>
</nav>

    <!-- 캐러셀 -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" src="/TravelGuide/image/ca2.jpg" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>환영합니다.</h1>
              <p>만나서 반갑습니다.</p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="/TravelGuide/image/ca1.jpg" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
            	<h1>환영합니다.</h1>
              	<p>만나서 반갑습니다.</p>  
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="/TravelGuide/image/ca3.jpg" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
            	<h1>환영합니다.</h1>
              	<p>만나서 반갑습니다.</p>  
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->

    <div class="container marketing">
      <div class="row">
        <div class="col-lg-4">
          <img class="img-circle" src="/TravelGuide/image/b1.jpg" alt="Generic placeholder image" width="140" height="140">
          <h2>Korea</h2>
          <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
        <div class="col-lg-4">
          <img class="img-circle" src="/TravelGuide/image/h1.jpg" alt="Generic placeholder image" width="140" height="140">
          <h2>Japan</h2>
          <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>        <div class="col-lg-4">
          <img class="img-circle" src="/TravelGuide/image/s1.jpg" alt="Generic placeholder image" width="140" height="140">
          <h2>China</h2>
          <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
      </div> 
      <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2014 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>

    </div>    
    
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/holder.js"></script>
    <script src="../js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>