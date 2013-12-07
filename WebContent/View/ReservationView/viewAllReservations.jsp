<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

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
								<td align="center"><c:out value="${booking.pnr }"></c:out></td>
								<td align="center"><c:out value="${booking.flightId }"></c:out></td>
								<td align="center"><c:out value="${booking.customerId }"></c:out></td>
								<td align="center"><c:out value="${booking.numberOfSeatsBooked }"></c:out></td>
								<td align="center"><c:out value="${booking.dateOfBooking }"></c:out></td>
								<td align="center"><c:out value="${booking.dateOfFlying }"></c:out></td>
								<td align="center"><c:out value="${booking.totalPrice }"></c:out></td>
								<td align="center"><c:out value="${booking.currentStatus }"></c:out></td>
</tr>

</c:forEach>

</table>
</c:when>
</c:choose>

</body>
</html>