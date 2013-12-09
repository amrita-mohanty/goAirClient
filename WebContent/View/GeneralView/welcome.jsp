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


<div id="container" style="width: 150%;">		
<br><div id = "content" style="width: 150%;">
<div>
<c:if test="${message ne '' }">
<c:out value="${message }"></c:out>
</c:if>
</div>	


<form class="box login" name="login" style="height: auto; top: 50%;" method="post" action="SignUp">
		<h3>
			<br> <label>Welcome to Go Airways !! </label>
		</h3>	
<h2><b><font size="4"> Welcome, <%=role %></font></b></h2>
</form>

</div> 
</div>		
		


</body>
</html>