<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML>
<html>
<head>
<title>Find Booking</title>
<meta charset="UTF-8" />
<style type="text/css">
<%@ include file="/View/css/reset.css" %>
<%@ include file="/View/css/structure.css" %>
</style>
</head>

<body>

			<h2>Search Reservation</h2>
			<h3>
				<c:if test="${message ne '' }">
					<c:out value="${message }"></c:out>
				</c:if>
			</h3>


			<form method="post" action="SearchReservation">
				<select name="selCount">
					<option value="100">100</option>
					<option value="500">500</option>
					<option value="1000">1000</option>
					<option value="all">All</option>
				</select> <br> <br> <input type="submit" name="submitBooking"
					value="Submit">
					
			</form>
			
			
			<c:choose>
				<c:when test="${SearchReservation ne null }">
				<h2>Searched Booking</h2>
					<table style="width: 100%;">
						<tr>
							<th>PNR Number</th>
							<th>Flight ID</th>
							<th>Customer ID</th>
							<th>Number of Seats</th>
							<th>Reservation Date</th>
							<th>Flying Date</th>
							<th>Total Price</th>
							<th>Current Status</th>
</tr>
<c:forEach items="${SearchReservation}" var="booking">
							<tr>
								<td> "${booking.pnr }"</td>
								<td>  "${booking.flightId}" </td>
								<td>  "${booking.customerId }"</td>
								<td> "${booking.numberOfSeatsBooked }"</td>
								<td><fmt:formatDate value="${booking.dateOfBooking.time}" type = "DATE" pattern="MM/dd/yyyy"/></td>
								<td><fmt:formatDate value="${booking.dateOfFlying.time}" type = "DATE" pattern="MM/dd/yyyy"/></td>
								<td> "${booking.totalPrice }"</td>
								<td> "${booking.currentStatus }"</td>
								
								
								
								<td><form method="post" action="deleteReservation">
								<input type="hidden" value= '${booking.pnr}' name="pnr">
								<input type="hidden" value= '${booking.flightId}' name="flightId">
								<input type="hidden" value= '${booking.customerId}' name="customerId">
								<input type="hidden" value= '${booking.numberOfSeatsBooked}' name="numberOfSeatsBooked">
								<input type="hidden" value= '${booking.dateOfBooking.time}' name="dateOfBooking">
								<input type="hidden" value= '${booking.dateOfFlying.time}' name="dateOfFlying">
								<input type="hidden" value= '${booking.totalPrice}' name="totalPrice">
								<input type="hidden" value= '${booking.currentStatus}' name="currentStatus">
								<input class="btnLogin" type="submit" value="Delete"/>
								</form></td>
</tr>

</c:forEach>

</table>
</c:when>
</c:choose>



</body>
</html>