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
</head>
<body>

<%      System.out.println("in showmovie and username detail.jsp");
		Flight flight = (Flight)session.getAttribute("flightdetails");
	%>
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
				<table style="width: 100%">
				
						<tr>
						<td>Flight Name</td>
						<td><input type="text" name="flightName" 
							value="${flightDetails.flightName}" /> 	</td>	</tr>
							
						<tr>
						<td>Flight Id</td>
						<td><input type="text" name="flightId" 
							value="${flightDetails.flightId}" /></td>	
						</tr>
							
						<tr>
						<td>Source</td>
						<td><input type="text" name="source"  value="${flightDetails.source}"/> </td>	
						</tr>
							
						<tr>
						<td>Destination</td>
						<td><input type="text" name="destination"  value="${flightDetails.destination}"/> </td>	
						</tr>	
						
						<tr>
						<td>Arrival Time</td>
						<td><input type="text" name="arrivaltime"  value="${flightDetails.arrivalTime}"/> </td>	
						</tr>	
						
						<tr>
						<td>Departure Time</td>
						<td><input type="text" name="deptTime"  value="${flightDetails.departureTime}"/> </td>	
						</tr>
				</table>
				</fieldset>
				</form>
</body>
</html>