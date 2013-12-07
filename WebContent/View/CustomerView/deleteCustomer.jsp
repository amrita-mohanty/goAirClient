<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<% String role = (String)session.getAttribute("role"); %>
<!DOCTYPE HTML>
<html>
<head>



<title>Delete Customer</title>
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
<div id="container">
		<div id="content">

<div>
<c:if test="${message ne '' }">
<c:out value="${message }"></c:out>
</c:if>
</div>		

<form class="box login" name="DeleteCustomer" style="height: auto; top: 50%;" method="post" action="deleteCustomer">
		
		
		<h3>
			<br> <label>Delete Customer</label>
		</h3>
		<fieldset class="boxBody">
			<label>Email</label>
			<input type="text"  tabindex="2" required name="email">
		</fieldset>
		
		<footer>
			<input type="submit" class="btnLogin" value="Delete" tabindex="3">
		</footer>
</form>
</div>
</div>
</body>
</html>