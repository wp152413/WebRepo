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
  <h1 class="w3-jumbo">중국</h1>
</div>

<div class="w3-row-padding w3-content" style="max-width:1400px">
  <div class="w3-twothird">
    <div id="googleMap" style="height:400px;" class="w3-grayscale-max"></div>
    <br>
    <h2>번역하기(한국어 -> 중국어)</h2>
    <div class="w3-justify">
    	<form action="${contextPath}/translationCn" method="post">
	      <input type="text" name="InputData" id="inputText" class="form-control">  
	      <button class="btn btn-lg btn-primary btn-block" type="submit">번역하기</button>  
	      	
    	</form>
      </div>
  </div>
  <div class="w3-third">
    <div class="w3-container w3-light-grey">
      <h2>상해</h2>
      <p class="w3-justify">160년 전 작은 어촌에 불과하던 도시. 미국 뉴욕 맨하탄에 버금가는 화려함과 역동성을 지닌 상하이는 중국 4대 직할시 중 하나로 현재 북경보다 경제적 중요도가 높아가고 있다. 천지 개벽을 이루어낸 상하이의 마천루 사이로 뱀처럼 구불구불 이어진 황푸강이 와이탄과 푸둥을 동서로 가로지르며, 최 첨단 미래와 천년 역사의 조화를 이루며 동방의 빛으로 약진 하고 있다.</p>
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

<script>
function myMap() {
  myCenter=new google.maps.LatLng(31.236961,121.515169);
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
    