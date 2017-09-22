/**
 * 
 */

$(document).ready(function() {
  		$('#Loginform').submit(function (event) {
  			//submit되는 것을 막기
  			event.preventDefault();
  			
  			
  			console.log('start');
  			//id, pwd 값 가져오기
  			var id=$("#id").val(); //document.getElementById("id").value
  			var pwd=$("#pwd").val();
  			console.log(id,pwd);
  			
  			//서버로 post방식 전송(ajax)
  			$.post("http://httpbin.org/post",
  				{ id: id, pwd: pwd},
  				function(data){
  					//서버로부터 응답을 받으면	
  					//alert(data.form.id+'님 로그인 되었습니다.');
  					var myModal=$('#myModal');
  					myModal.modal();
  					myModal.find('.modal-body').text(data.form.id+ '님 로그인되었습니다.');
  				});
  			
  		}); 	
  	});



$(document).ready(function() {
		$('#SignUp_form').submit(function (event) {
			//submit되는 것을 막기
			event.preventDefault();
			
			
			console.log('start');
			//id값 가져오기
			var name=$("#name").val(); //document.getElementById("id").value
			console.log(name);
			
			//서버로 post방식 전송(ajax)
			$.post("http://httpbin.org/post",
				{ name: name},
				function(data){
					//서버로부터 응답을 받으면	
					var myModal=$('#Signup_Modal');
					myModal.modal();
					myModal.find('.modal-body').text(data.form.name+ '님 회원가입되었습니다.');
				});
			
		}); 	
	});
	
	function myMap() {
		var myCenter = new google.maps.LatLng(36.779168, 127.154088);
		var mapProp = {center:myCenter, zoom:12, scrollwheel:false, draggable:false, mapTypeId:google.maps.MapTypeId.ROADMAP};
		var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
		var marker = new google.maps.Marker({position:myCenter});
		marker.setMap(map);
	}
