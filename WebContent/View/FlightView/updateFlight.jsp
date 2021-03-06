<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<% String role = (String)session.getAttribute("role"); %>
<%@page import="goair.model.flight.Flight"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title> Update Flight</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>

<style type="text/css">
<%@ include file="/View/css/reset.css" %>
<%@ include file="/View/css/structure.css" %>

</style>


<script>
 $(function() {
	  $( "#startdatepick" ).datepicker();
});
</script>
<script>
 $(function() {
	  $( "#enddatepick" ).datepicker();
});
</script>
</head>
<body>
<div id="navbar">
		<jsp:include page="/View/GeneralView/navbar.jsp"></jsp:include>
</div>
<form class="box login" name="form2" style="height: auto; top: 50%;" method="post" action="UpdateFlight">

<h3>
			<br> <label>Update Flight</label>
</h3>
		
		<c:if test="${message ne '' }">
					<h3>
						<c:out value="${message }"></c:out>
					</h3>
				</c:if>
				
				<fieldset class="boxBody">
		   <label>Flight Name</label> <input type="text" tabindex="1" value = "${flight.flightName}" name = "flightName">	
			<label>Airline Name</label> <input type="text" tabindex="1" value = "${flight.airlineName}" name="airlineName">
			<label>Flight ID</label> <input type="text" tabindex="1" value = "${flight.flightId}" name="flightId">
			<label>Source</label> <input type="text" tabindex="1" value = "${flight.source}" name="source">
			<label>Destination</label> <input type="text" tabindex="1"  value = "${flight.destination}" name="destination">
			<label>Departure Time</label> 
			<select name="deptTime" class="cjComboBox" >
			<option value="12:00:00">12 AM</option>
	<option value="12:00:00"  ${DepartureTime == '12:00:00' ? 'selected' : ''}>12 AM</option>
	<option value="1:00:00"   ${DepartureTime == '1:00:00' ? 'selected' : ''}>1 AM</option>
	<option value="2:00:00"  ${DepartureTime == '2:00:00' ? 'selected' : ''}>2 AM</option>
	<option value="3:00:00"  ${DepartureTime == '3:00:00' ? 'selected' : ''}>3 AM</option>
	<option value="4:00:00" ${DepartureTime == '4:00:00' ? 'selected' : ''}>4 AM</option>
	<option value="5:00:00" ${DepartureTime == '5:00:00' ? 'selected' : ''}>5 AM</option>
	<option value="6:00:00" ${DepartureTime == '6:00:00' ? 'selected' : ''}>6 AM</option>
	<option value="7:00:00" ${DepartureTime == '7:00:00' ? 'selected' : ''}>7 AM</option>
	<option value="8:00:00" ${DepartureTime == '8:00:00' ? 'selected' : ''}>8 AM</option>
	<option value="9:00:00" ${DepartureTime == '9:00:00' ? 'selected' : ''}>9 AM</option>
	<option value="10:00:00" ${DepartureTime == '10:00:00' ? 'selected' : ''}>10 AM</option>
	<option value="11:00:00" ${DepartureTime == '11:00:00' ? 'selected' : ''}>11 AM</option>
	<option value="12:00:00" ${DepartureTime == '12:00:00' ? 'selected' : ''}>12 PM</option>
	<option value="13:00:00" ${DepartureTime == '13:00:00' ? 'selected' : ''}>1 PM</option>
	<option value="14:00:00" ${DepartureTime == '14:00:00' ? 'selected' : ''}>2 PM</option>
	<option value="15:00:00" ${DepartureTime == '15:00:00' ? 'selected' : ''}>3 PM</option>
	<option value="16:00:00" ${DepartureTime == '16:00:00' ? 'selected' : ''}>4 PM</option>
	<option value="17:00:00" ${DepartureTime == '17:00:00' ? 'selected' : ''}>5 PM</option>
	<option value="18:00:00" ${DepartureTime == '18:00:00' ? 'selected' : ''}>6 PM</option>
	<option value="19:00:00" ${DepartureTime == '19:00:00' ? 'selected' : ''}>7 PM</option>
	<option value="20:00:00" ${DepartureTime == '20:00:00' ? 'selected' : ''}>8 PM</option>
	<option value="21:00:00" ${DepartureTime == '21:00:00' ? 'selected' : ''}>9 PM</option>
	<option value="22:00:00" ${DepartureTime == '22:00:00' ? 'selected' : ''}>10 PM</option>
    <option value="23:00:00" ${DepartureTime == '23:00:00' ? 'selected' : ''}>11 PM</option>
	</select>
	
<label>Arrival Time</label>
	<select name="arrivalTime" class="cjComboBox" >
    <option value="12:00:00"  ${ArrivalTime == '12:00:00' ? 'selected' : ''}>12 AM</option>
	<option value="1:00:00"   ${ArrivalTime == '1:00:00' ? 'selected' : ''}>1 AM</option>
	<option value="2:00:00"  ${ArrivalTime == '2:00:00' ? 'selected' : ''}>2 AM</option>
	<option value="3:00:00"  ${ArrivalTime == '3:00:00' ? 'selected' : ''}>3 AM</option>
	<option value="4:00:00" ${ArrivalTime == '4:00:00' ? 'selected' : ''}>4 AM</option>
	<option value="5:00:00" ${ArrivalTime == '5:00:00' ? 'selected' : ''}>5 AM</option>
	<option value="6:00:00" ${ArrivalTime == '6:00:00' ? 'selected' : ''}>6 AM</option>
	<option value="7:00:00" ${ArrivalTime == '7:00:00' ? 'selected' : ''}>7 AM</option>
	<option value="8:00:00" ${ArrivalTime == '8:00:00' ? 'selected' : ''}>8 AM</option>
	<option value="9:00:00" ${ArrivalTime == '9:00:00' ? 'selected' : ''}>9 AM</option>
	<option value="10:00:00" ${ArrivalTime == '10:00:00' ? 'selected' : ''}>10 AM</option>
	<option value="11:00:00" ${ArrivalTime == '11:00:00' ? 'selected' : ''}>11 AM</option>
	<option value="12:00:00" ${ArrivalTime == '12:00:00' ? 'selected' : ''}>12 PM</option>
	<option value="13:00:00" ${ArrivalTime == '13:00:00' ? 'selected' : ''}>1 PM</option>
	<option value="14:00:00" ${ArrivalTime == '14:00:00' ? 'selected' : ''}>2 PM</option>
	<option value="15:00:00" ${ArrivalTime == '15:00:00' ? 'selected' : ''}>3 PM</option>
	<option value="16:00:00" ${ArrivalTime == '16:00:00' ? 'selected' : ''}>4 PM</option>
	<option value="17:00:00" ${ArrivalTime == '17:00:00' ? 'selected' : ''}>5 PM</option>
	<option value="18:00:00" ${ArrivalTime == '18:00:00' ? 'selected' : ''}>6 PM</option>
	<option value="19:00:00" ${ArrivalTime == '19:00:00' ? 'selected' : ''}>7 PM</option>
	<option value="20:00:00" ${ArrivalTime == '20:00:00' ? 'selected' : ''}>8 PM</option>
	<option value="21:00:00" ${ArrivalTime == '21:00:00' ? 'selected' : ''}>9 PM</option>
	<option value="22:00:00" ${ArrivalTime == '22:00:00' ? 'selected' : ''}>10 PM</option>
    <option value="23:00:00" ${ArrivalTime == '23:00:00' ? 'selected' : ''}>11 PM</option>
	</select>

			<label>Start Date <input value = "${startDate}" type="text" name="startdatepick" id="startdatepick" ></label>
			<label>End Date <input value = "${endDate}" type="text" name="enddatepick" id="enddatepick" ></label>
			<label>Total Seats </label> <input type="text" tabindex="1"   value = "${flight.totalSeats}" name ="totalseats">
			<label>Days of Week</label>
			<input type="checkbox" name="dayofweek" value="Monday">Monday<br> 
			<input type="checkbox" name="dayofweek" value="Tuesday">Tuesday<br>
            <input type="checkbox" name="dayofweek" value="Wednesday">Wednesday<br>
            <input type="checkbox" name="dayofweek" value="Thursday">Thursday<br>
            <input type="checkbox" name="dayofweek" value="Friday">Friday<br>
            <input type="checkbox" name="dayofweek" value="Saturday">Saturday<br>
            <input type="checkbox" name="dayofweek" value="Sunday">Sunday<br>
  </fieldset>
  
  <footer>
			<input type="submit" class="btnLogin" value="Update Flight"  name ="updateflight" tabindex="3">
			</footer>
				</form>
</body>
</html>