<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<% String role = (String)session.getAttribute("role"); %>
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


	<form class="box login" name="login" method="post" action="logIn">
		<h3>
			 Welcome, <%=role %>
		</h3>
		
		<label>Welcome to Go Airways !! </label>
	
		<fieldset class="boxBody">
			<label>Username</label> <input type="text" tabindex="1"
				placeholder="Enter Email" name="email">
			<!-- <label><a href="#" class="rLink" tabindex="5">Forget your password?</a>Password</label> -->
			<label>Password</label>
			<input type="password" placeholder="Enter Email" tabindex="2" name="password">
		</fieldset>
		
		<footer>
			<!-- <label><input type="checkbox" tabindex="3">Keep me logged in</label>-->
			<input type="submit" class="btnLogin" value="Login" tabindex="3">
			
			
			<c:if test ='<%=role.equalsIgnoreCase("Customer") %>'>
				<input type="button" class="btnLogin" value="Sign Up" tabindex="3"
				onclick="window.location='../CustomerView/SignUp.jsp'">
			</c:if>
			
		</footer>
	</form>
	<footer id="main"> </footer>
</body>
</html>