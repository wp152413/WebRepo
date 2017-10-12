<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>SignUp</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link rel="stylesheet" href="/WebClass/css/signin.css">
</head>
<body>
<div class="container">

  <form id="signupForm" class="form-signin" action="" method="post">
    <h2 class="form-signin-heading">Please sign up</h2>
    
    <label for="inputEmail" class="sr-only">Email address</label>
    <input type="email" name="inputEmail" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
    
    <label for="inputPassword" class="sr-only">Password</label>
    <input type="password" name="inputPassword" id="inputPassword" class="form-control" placeholder="Password" required>
	
	<label for="inputName" class="sr-only">Name</label>
    <input type="text" name="inputName" id="inputName" class="form-control" placeholder="Name" required>
	
	<label for="inputNickName" class="sr-only">Nick Name</label>
    <input type="text" name="inputNickName" id="inputNickName" class="form-control" placeholder="Nickname" required>
    <br>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign up</button>
  </form>
</div>

<%@ include file="modal.jsp" %>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

<script>

	
	
	$(document).ready(function() {
  		$('#signupForm').submit(function (event) {
  			//submitëë ê²ì ë§ê¸°
  			event.preventDefault();
  			
  			
  			console.log('start');
  			//id, pwd ê° ê°ì ¸ì¤ê¸°
  			var inputEmail=$("#inputEmail").val(); //document.getElementById("id").value
  			var inputPassword=$("#inputPassword").val();
  			var inputName=$("#inputName").val();
  			var inputNickName=$("#inputNickName").val();
  			console.log(inputEmail,inputName);
  			
  			
  			//ìë²ë¡ postë°©ì ì ì¡(ajax)
  			$.post("/WebClass/signup",
  				{ inputEmail: inputEmail, inputPassword: inputPassword, inputName: inputName, inputNickName: inputNickName},
  				function(data){ //응답을 처리할 call back함수
  					if(data.msg == "success") {
  						location.href = "jsp/login.jsp";
  					} else {
  						var myModal=$('#myModal');
  						myModal.modal();
  						myModal.find('.modal-body').text('회원가입시 오류가 발생하였습니다');
  					}
  				});
  			
  		}); 	
  	});

</script>
</body>
</html>