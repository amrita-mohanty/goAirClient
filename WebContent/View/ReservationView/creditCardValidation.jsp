<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<% String role = (String)session.getAttribute("role"); %>

<!DOCTYPE HTML>
<html>
<head>
<title>Update Customer</title>
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

<form class="box login" style="height: auto; top: 50%;" method="post" action="confirmReservation">
		<h3>
			<br> <label>Confirm Reservation!!</label>
		</h3>
		
		<fieldset class="boxBody">
		
			<input type="hidden" value= '${reservation.customerId}' tabindex="1" name="customerId">	
			<input type="hidden" value= '${reservation.flightId}' tabindex="1" name="flightId">
			<input type="hidden" value= '${reservation.numberOfSeatsBooked}' tabindex="1" name="numberOfSeatsBooked">
			<input type="hidden" value= '${dateBooking}' tabindex="1" name="dateOfBooking">
			<input type="hidden" value= '${dateFlying}'  tabindex="1" name="dateOfFlying">
			<input type="hidden" value= '${reservation.totalPrice}'  tabindex="1" name="totalPrice">
			<label>Total Price :</label><c:out value="${reservation.totalPrice }"></c:out>
			
			
			<label>Credit Card Number</label> <input type="text" tabindex="1" name="creditCardNumber">
			
					
		</fieldset>
		<footer>
		<br>
		<input type="submit" class="btnLogin" value="Submit" tabindex="3">
		<!-- <input class="submit" type="submit" value="Submit" onclick="validate_creditcardnumber()" /> -->
		
		</footer>
		
		
		
		
		</form>
		</div>
		</div>



</body>
</html>