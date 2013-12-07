<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Log In</title>
<meta charset="UTF-8" />

<style type="text/css">
<%@ include file="/View/css/reset.css" %>
<%@ include file="/View/css/structure.css" %>
</style>
</head>

<body>


	<form class="box login" name="login" method="post" action="roleSelect">
	
		<label>Welcome to Go Airways !! </label>
		
	
		<fieldset class="boxBody">
		
			<label>Select your Role </label>
			<br><input type = "radio" name ="role" value = "Admin" tabindex="3">Admin
			<br><input type = "radio" name ="role" value = "Employee" tabindex="3">Employee
			<br><input type = "radio" name ="role" value = "Customer" tabindex="3">Customer
			
		</fieldset>
		
		
		<footer>
			<input type="submit" class="btnLogin" value="Enter" tabindex="3">
		</footer>
	</form>
	
	<footer id="main"> </footer>
</body>
</html>