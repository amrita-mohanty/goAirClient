<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<% String role = (String)session.getAttribute("role"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Flight Status</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>

<style type="text/css">
<%@ include file="/View/css/reset.css" %>
<%@ include file="/View/css/structure.css" %>
</style>
</head>
<body>
<form class="box login" name="form1" style="height: auto; top: 50%;" method="post" action="FlighStatus">
		<h3>
			<br> <label>Check Flight Status</label>
		</h3>
		<c:if test="${message ne '' }">
			<h3>
				<c:out value="${message }"></c:out>
			</h3>
		</c:if>
		<fieldset class="boxBody">
			<label>Flight ID</label> <input type="text" tabindex="1" name="flightId">	
			<label>Flight Status </label> <input type="text" tabindex="1" name="status">
		</fieldset>
		<footer>
			<input type="submit" class="btnLogin" value="Check"  name ="checkflight" tabindex="3">
		</footer>
</form>
</body>
</html>