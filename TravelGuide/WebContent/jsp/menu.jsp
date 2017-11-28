<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<ul class="navbar-nav mr-auto">
	  <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link" href="${contextPath}/jsp/home.jsp">HOME</a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link" href="${contextPath}/jsp/korea.jsp">한국</a>
      </li>
      <li class="nav-item"  onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link" href="${contextPath}/jsp/japan.jsp">일본</a>
      </li>
      <li class="nav-item"  onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link" href="${contextPath}/jsp/china.jsp">중국</a>
      </li>
</ul>