<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/WebClass/scope" method="post">
<input type="text" name="id">
<input type="hidden" name="pwd" value="test">
<button type="submit">전송</button>
</form>

<h1>id :<%=request.getParameter("id") %></h1>
<h1>pwd :<%=request.getParameter("pwd") %></h1>
<h1>request scope :<%=request.getAttribute("key") %></h1>
<h1>session scope :<%=session.getAttribute("key") %></h1> <!-- //request.getSession().getAttribute("key")  -->
<h1>application scope :<%=application.getAttribute("key") %></h1> <!-- //request.getServlet().getAttribute("key") -->


<h1>id :${param.id}</h1>
<h1>pwd :${param.pwd }</h1>
<h1>request scope :${key}</h1>
<h1>session scope :${sessopnScope.key}</h1> <!-- //request.getSession().getAttribute("key")  -->
<h1>application scope :${applicationScope.key }</h1> <!-- //request.getServlet().getAttribute("key") -->




<hr>
<form action="/WebClass/jsp/scope2.jsp" method="post">
<button type="submit">전송2</button>
</form>
<script>
<%
	String error=(String) request.getAttribute("error");
	if(error!=null){ 
%>
	alert('<%= error %>');
<%		
	}
%>
</script>

</body>
</html>