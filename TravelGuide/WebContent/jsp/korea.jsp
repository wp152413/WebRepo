<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<title>대한민국</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">

<body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div>
  	<%@ include file="menu.jsp" %>
  </div>
</nav>
  		
	

<div class="w3-light-grey w3-padding-64 w3-margin-bottom w3-center">
  <h1 class="w3-jumbo">대한민국</h1>
</div>

<div class="w3-row-padding w3-content" style="max-width:1400px">
  <div class="w3-twothird">
    <div id="googleMap" style="height:400px;" class="w3-grayscale-max"></div>
    <br>
    <h2>번역하기(영어 -> 한국어)</h2>
    <div class="w3-justify">
    	<form action="${contextPath}/translationKo" method="post">  <!--TranslationServletKo.java 호출 -->
	      <input type="text" name="InputData" id="inputText" class="form-control">  
	      <button class="btn btn-lg btn-primary btn-block" type="submit">번역하기</button>  
	    
    	</form>
      </div>
  </div>
  <div class="w3-third">
    <div class="w3-container w3-light-grey">
      <h2>BuSan</h2>
      <p class="w3-justify">대한민국 제2의 도시이자, 제1의 무역항이다. 동쪽과 남쪽은 바다에 면하고, 서쪽은 김해시 장유동과 창원시 진해구, 북쪽은 양산시 물금읍과 김해시 대동면, 동쪽은 울산광역시 서생면·온양읍에 접한다. 대한민국 남동단의 관문으로 서울특별시에서 남동쪽으로 약 450km, 대한해협을 끼고 일본 시모노세키[下關]와 약 250km 떨어져 있다. 1군 15구로 이루어져 있으며, 면적은 765.94㎢이다. 시청 소재지는 부산광역시 연제구 연산5동 1000번지이다.</p>
    </div>
    <br>
    <div class="w3-container w3-light-grey w3-justify">
    	<h3>네이버로 공유하기</h3>
    	<span>
		<script type="text/javascript" src="http://share.naver.net/js/naver_sharebutton.js"></script>
		<script type="text/javascript">new ShareNaver.makeButton({"type": "f"});
		</script>
	</span>  
    </div>
    <br>
  </div>
</div>

<script>  //구글 Open API 지도를 띄워줌.
function myMap() {
  myCenter=new google.maps.LatLng(35.111025,129.032653);
  var mapOptions= {
    center:myCenter,
    zoom:12, scrollwheel: false, draggable: false,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapOptions);

  var marker = new google.maps.Marker({
    position: myCenter,
  });
  marker.setMap(map);
}


</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDHX6Ou3aA9gkFSLVSCXG_lqZcFdXEOZas&callback=myMap"></script>
</body>
</html>
    