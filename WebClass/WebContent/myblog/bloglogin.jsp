<%@ page language="java" contentType="text/html; charset=UTF-8" 
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Login화면</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="/WebClass/css/blog.css">
	<link rel="stylesheet" type="text/css" href="/WebClass/css/footer.css">
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
      <ul class="nav navbar-nav navbar-right">
        <li><a href="index.jsp">HOME</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container">
	<h3 class="text-center">LOGIN</h3>
 	<p class="text-center"><em>Please enter your id and password.</em></p>
	<form class="form-horizontal" id="Loginform" action="/WebClass/bloglogin" method="post">
  		<div class="form-group">
	    	<label class="control-label col-sm-2" for="id">ID:</label>
	    	<div class="col-sm-8">
	    		<input class="form-control mr-sm-2" name="id" type="text" placeholder="Enter ID" aria-label="ID" id="id" required>
    		</div>
  		</div>
  		<div class="form-group">
    		<label class="control-label col-sm-2" for="pwd">Password:</label>
    		<div class="col-sm-8">          
     			<input class="form-control mr-sm-2" name="pwd" type="password" placeholder="Enter password" aria-label="PWD" id="pwd" required>
    		</div>
  		</div>
  		<div class="form-group">        
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
		</div>		   
  	</form>
</div>


<%@ include file="../jsp/modal.jsp" %>

<!-- 
<div class="modal fade" id="myModal" role="dialog">
  <div class="modal-dialog">

    Modal content
    <div class="modal-content">
      <div class="modal-header">
        <h4><span class="glyphicon glyphicon-lock"></span> 로그인결과</h4>
      </div>
      <div class="modal-body">
        
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
          Close
        </button>
      </div>
    </div>
  </div>
</div>

 -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- <script src="../js/blog.js"></script>
 -->
<script>
	<%-- 로그인이 실패한 경우 처리 추가 --%>
	<% if("error".equals(request.getAttribute("msg"))) { %>	
		var myModal = $('#myModal');
		myModal.find('.modal-title').text('로그인 에러!!');
		myModal.find('.modal-body').text('ID와 Password를 다시 확인해주세요');
		myModal.modal();
		
		$('#id').val("<%=request.getParameter("id")%>")
		$('#pwd').val("<%=request.getParameter("pwd")%>")
		
	<% } %>
	
</script>	
</body>
</html>




