<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<% String role = (String)session.getAttribute("role"); %>
<!DOCTYPE HTML>
<html>
<head>
<title>Update Customer</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<meta charset="UTF-8" />
<style type="text/css">
<%@ include file="/View/css/reset.css" %>
<%@ include file="/View/css/structure.css" %>
</style>
<script>
 $(function() {
	  $( "#datepick" ).datepicker();
});
</script>

<script>
 $(function() {
	  $( "#datepick2" ).datepicker();
});
</script>

</head>

<!-- <script>
function validate_creditcardnumber()
{
var re16digit=/^\d{16}$/;
if (document.updateCustomer.creditCardNumber.value.search(re16digit)==-1)
alert("Please enter your 16 digit credit card numbers");
request.setAttribute("fname", document.updateCustomer.creditCardNumber.value);
location.href = 'createReservation.jsp';
return false;
}
</script> -->

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

<form class="box login" style="height: auto; top: 50%;" method="post" action="createReservation">
		<h3>
			<br> <label>Create Reservation!!</label>
		</h3>
		<fieldset class="boxBody">
			<label>Customer Id</label> <input type="text" tabindex="1" name="customerId" value = "${fname}">	
			<label>Flight Id</label> <input type="text" tabindex="1" name="flightId">
			<label>Number of seats to reserve</label><input type="text" tabindex="1" name="numberOfSeatsBooked">
			<!-- <label>Date of Booking </label> <input type="text" tabindex="1" name="dateOfBooking" id="datepick"> -->
			<label>Date of Flying </label> <input type="text" tabindex="1" name="dateOfFlying" id="datepick2">
			<!-- <label>Credit Card Number</label> <input type="text" tabindex="1" name="creditCardNumber">
			<label>Total Price</label> <input type="text" tabindex="1" name="totalPrice">
			 -->		
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