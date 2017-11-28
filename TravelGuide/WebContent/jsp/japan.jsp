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
  <h1 class="w3-jumbo">일본</h1>
</div>

<div class="w3-row-padding w3-content" style="max-width:1400px">
  <div class="w3-twothird">
    <div id="googleMap" style="height:400px;" class="w3-grayscale-max"></div>
    <br>
    <h2>번역하기(한국어 -> 일본어)</h2>
    <div class="w3-justify">
    	<form action="${contextPath}/translationJa" method="post">
	      <input type="text" name="InputData" id="inputText" class="form-control">  
	      <button class="btn btn-lg btn-primary btn-block" type="submit">번역하기</button>  
	      	
    	</form>
      </div>
  </div>
  <div class="w3-third">
    <div class="w3-container w3-light-grey">
      <h2>후쿠오카</h2>
      <p class="w3-justify">하카타만에 면한 현청소재지이다. 규슈의 정치·경제·문화의 중추적 관리도시이다.일찍이 다자이후[大宰府:일본의 규슈·이키[壹岐]·쓰시마[對馬]를 관할하고 외교·국방을 맡았던 관청]의 외항, 견수(遣隋)·견당사(遣唐使)의 기지로서 번영하였고, 15∼16세기에는 명(明)나라와의 무역과 성읍으로서 번영하였다.메이지[明治] 때는 후쿠오카와 하카타[博多]가 합병되었고, 쇼와[昭和] 때는 기타큐슈[北九州]의 중화학공업과 지쿠호[筑豊] 등의 석탄광업의 발전에 따라 규슈 제일의 대도시로 발전하였다.
      공업은 화학·방적·기계·인쇄제본·식료품 공업 등 외에 하카타 견직물·하카타 인형 등의 전통산업도 활발한 상업도시이다. 하카타 어항은 서일본의 원양어업기지로서, 어획량은 전국의 2∼3위를 차지한다.철도는 산요신칸센[山陽新幹線]·가고시마본선[鹿兒島本線]이 통하고 지쿠히[筑肥]를 비롯하여 4개 지선이 분기하며, 항공노선은 국내 각지를 비롯하여 홍콩·타이베이[臺北]·서울·부산 등지와 연결된다.
      </p>
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
  myCenter=new google.maps.LatLng(33.593274,130.351354);
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
    