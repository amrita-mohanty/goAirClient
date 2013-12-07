<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<% String role = (String)session.getAttribute("role"); %>
<!DOCTYPE HTML>
<html>
<head>
<title>Welcome</title>
<meta charset="UTF-8" />
<style type="text/css">
<%@ include file="/View/css/reset.css" %>
<%@ include file="/View/css/structure.css" %>
</style>
</head>
<body>
<div id="navbar">
		<jsp:include page="/View/GeneralView/navbar.jsp"></jsp:include>
</div>

<form class="box login" name="login" style="height: auto; top: 50%;" method="post" action="SignUp">
		<h3>
			<br> <label>Welcome to Go Airways !! </label>
		</h3>	
	
<div id="container">		
<br><div id = "content" style="width: 150%;"><h2><b><font size="8"> Welcome, <%=role %></font></b></h2></div> <br>
</div>		.
		
</form>

</body>
</html>