<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Find a Flight</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
<%@ include file="/View/css/reset.css" %>
<%@ include file="/View/css/structure.css" %>
</style>
<script>
 $(function() {
	  $( "#datepick" ).datepicker();
});
</script>
</head>
<body>
<div id="navbar">
		<jsp:include page="/View/GeneralView/navbar.jsp"></jsp:include>
</div>
<div id="container">
		<div id="content">

			<br>
			<h2>Search Flight</h2>
			<h4>
				<c:if test="${message ne '' }">
					<c:out value="${message }"></c:out>
				</c:if>
			</h4>
<form method="post" action="FindFlight">
<table style="width: 100%;">
				
					<tr>
						<td><b>Flight Name</b></td>
						<td><input type="text" name="flightName" value="${savedName }"></td>
					</tr>
					<tr>
					<td><b>Airline Name</b></td>
						<td><input type="text" name="airlineName"
							value="${savedAirline}"></td>
					</tr>	
					<tr>
						<td><b>Source</b></td>
						<td><input type="text" name="source" ></td>
					</tr>
					<tr>
						<td><b>Destination</b></td>
						<td><input type="text" name="destination" ></td>
					</tr>
                    
                    <tr>
						<td><b>Flying Date </b></td>
						<td><input type="text" name="flyingdate" value="${savedFlyingDate}" id="datepick" ></td>
					</tr>
                    
                    <tr>
						<td>&nbsp;</td>
						<td><input type="submit" name="searchFlight" value="Submit"></td>
					</tr>
					</table>
					
					<h2>Searched Flight</h2>
					<h4>
						<c:if test="${message1 ne '' }">
							<c:out value="${message1 }"></c:out>
						</c:if>
					</h4>
					<table style="width: 100%;">
						<tr>
							<th>Flight ID</th>
							<th>Flight Name</th>
							<th >Seat Available</th>
							<c:choose>
								<c:when
									test="${(not empty user.firstName) && (user.memberType ne 'admin')}">
									<th style="width:100px;">Action</th>
								</c:when>
								<c:otherwise>
									<th style="width:350px;">Actions</th>
								</c:otherwise>
							</c:choose>
						</tr>
						
						
						<c:forEach items="${SearchFlight}" var="flight">
							<tr>
								<td align="center"><c:out value="${flight.flightId }"></c:out></td>
								<td align="center"><a href="SearchMovieAction?movieId=${movies.movieId}">${movies.movieName }</a></td>
								<td align="center"><c:out value="${movies.availableCopies }"></c:out></td>
								<c:if
									test="${(not empty user.firstName) && (user.memberType eq 'admin')}">
									<td align="center" style="width:350px;">
										<div style="float:left;width:100px;">
											<form name="UpdateFlight" method="post"
												action="UpdateFlight">
												<input type="submit"  style="width: 100px;"
													name="updateFlight" value="Update" /> 
												<input type="hidden"
													name="flightId" value="${flight.flightId}" /> 
												<input type="hidden" 
													name="flightName" value="${flight.flightName}" />
												<input type="hidden" 
												     name="source" value="${flight.source}" /> 
												  <input type="hidden" 
												     name="destination" value="${flight.destination}" />    
												<input type="hidden"
													name="arrivalTime" value="${flight.arrivalDate}" /> 
												<input type="hidden" 
												name="deptTime" value="${flight.deptTime}" />	
											</form>
											</div>
					                   </td>
					</c:if>
					</tr>
					</c:forEach>

</table>
</form>
</div>
</div>

</body>
</html>