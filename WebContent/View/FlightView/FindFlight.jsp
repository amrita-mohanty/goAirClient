<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<% String role = (String)session.getAttribute("role"); %>
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
						<td><select name="source" class="cjComboBox" >
					<option value="">Pick your state</option>
					<option value="AL">Alabama</option>
					<option value="AK">Alaska</option>
					<option value="AZ">Arizona</option>
					<option value="AR">Arkansas</option>
					<option value="CA">California</option>
					<option value="CO">Colorado</option>
					<option value="CT">Connecticut</option>
					<option value="DE">Delaware</option>
					<option value="DC">District of Columbia</option>
					<option value="FL">Florida</option>
					<option value="GA">Georgia</option>
					<option value="HI">Hawaii</option>
					<option value="ID">Idaho</option>
					<option value="IL">Illinois</option>
					<option value="IN">Indiana</option>
					<option value="IA">Iowa</option>
					<option value="KS">Kansas</option>
					<option value="KY">Kentucky</option>
					<option value="LA">Louisiana</option>
					<option value="ME">Maine</option>
					<option value="MD">Maryland</option>
					<option value="MA">Massachusetts</option>
					<option value="MI">Michigan</option>
					<option value="MN">Minnesota</option>
					<option value="MS">Mississippi</option>
					<option value="MO">Missouri</option>
					<option value="MT">Montana</option>
					<option value="NE">Nebraska</option>
					<option value="NV">Nevada</option>
					<option value="NH">New Hampshire</option>
					<option value="NJ">New Jersey</option>
					<option value="NM">New Mexico</option>
					<option value="NY">New York</option>
					<option value="NC">North Carolina</option>
					<option value="ND">North Dakota</option>
					<option value="OH">Ohio</option>
					<option value="OK">Oklahoma</option>
					<option value="OR">Oregon</option>
					<option value="PA">Pennsylvania</option>
					<option value="RI">Rhode Island</option>
					<option value="SC">South Carolina</option>
					<option value="SD">South Dakota</option>
					<option value="TN">Tennessee</option>
					<option value="TX">Texas</option>
					<option value="UT">Utah</option>
					<option value="VT">Vermont</option>
					<option value="VA">Virginia</option>
					<option value="WA">Washington</option>
					<option value="WV">West Virginia</option>
					<option value="WI">Wisconsin</option>
					<option value="WY">Wyoming</option>
				</select>
			</td>
					</tr>
					<tr>
						<td><b>Destination</b></td>
						<td><select name="destination" class="cjComboBox" >
					<option value="">Pick your state</option>
					<option value="AL">Alabama</option>
					<option value="AK">Alaska</option>
					<option value="AZ">Arizona</option>
					<option value="AR">Arkansas</option>
					<option value="CA">California</option>
					<option value="CO">Colorado</option>
					<option value="CT">Connecticut</option>
					<option value="DE">Delaware</option>
					<option value="DC">District of Columbia</option>
					<option value="FL">Florida</option>
					<option value="GA">Georgia</option>
					<option value="HI">Hawaii</option>
					<option value="ID">Idaho</option>
					<option value="IL">Illinois</option>
					<option value="IN">Indiana</option>
					<option value="IA">Iowa</option>
					<option value="KS">Kansas</option>
					<option value="KY">Kentucky</option>
					<option value="LA">Louisiana</option>
					<option value="ME">Maine</option>
					<option value="MD">Maryland</option>
					<option value="MA">Massachusetts</option>
					<option value="MI">Michigan</option>
					<option value="MN">Minnesota</option>
					<option value="MS">Mississippi</option>
					<option value="MO">Missouri</option>
					<option value="MT">Montana</option>
					<option value="NE">Nebraska</option>
					<option value="NV">Nevada</option>
					<option value="NH">New Hampshire</option>
					<option value="NJ">New Jersey</option>
					<option value="NM">New Mexico</option>
					<option value="NY">New York</option>
					<option value="NC">North Carolina</option>
					<option value="ND">North Dakota</option>
					<option value="OH">Ohio</option>
					<option value="OK">Oklahoma</option>
					<option value="OR">Oregon</option>
					<option value="PA">Pennsylvania</option>
					<option value="RI">Rhode Island</option>
					<option value="SC">South Carolina</option>
					<option value="SD">South Dakota</option>
					<option value="TN">Tennessee</option>
					<option value="TX">Texas</option>
					<option value="UT">Utah</option>
					<option value="VT">Vermont</option>
					<option value="VA">Virginia</option>
					<option value="WA">Washington</option>
					<option value="WV">West Virginia</option>
					<option value="WI">Wisconsin</option>
					<option value="WY">Wyoming</option>
				</select></td>
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
				</form>				
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
									test="${(not empty user.firstName) && (user.role ne 'admin')}">
									<th style="width:100px;">Action</th>
								</c:when>
								<c:otherwise>
									<th style="width:350px;">Actions</th>
								</c:otherwise>
							</c:choose>
						</tr>
						
			
						<c:forEach items="${SearchFlight}" var="flight">
							<tr>
								<td align="center">${flight.flightId }</td>
								<td align="center">${flight.flightName }</td>
								<td align="center">${flight.seatsAvailable }</td>
			
									<td align="center" style="width:350px;">
										<div style="float:left;width:100px;">
											<form name="UpdateFlight" method="post" action="ActionFindFlight">
												<input type="hidden"
													name="flightId" value="${flight.flightId}" /> 
												<input type="hidden" 
													name="flightName" value="${flight.flightName}" />
													
												<input type="hidden" 
												     name="source" value="${flight.source}" /> 
												  <input type="hidden" 
												     name="destination" value="${flight.destination}" />    
												<input type="hidden"
													name="arrivalTime" value="${flight.arrivalTime.time}" /> 
												<input type="hidden" 
												name="deptTime" value="${flight.departureTime.time}" />	
												<input type="hidden" 
												name="airlineName" value="${flight.airlineName}" />	
												<input type="hidden" 
												name="crewDetails" value="${flight.crewDetails}" />	
												<input type="hidden" 
												name="passengers" value="${flight.passengers}" />
												<input type="hidden" 
												name="totalSeats" value="${flight.totalSeats}" />
												
												
												<input type="hidden" 
												name="flyingEndDate" value="${flight.flyingEndDate.time}" />		
												<input type="hidden" 
												name="flyingStartDate" value="${flight.flyingStartDate.time}" />		
											
											<c:if test ='<%=role.equalsIgnoreCase("Admin") %>'>
												<input type="submit"  style="width: 100px;"
													name="actionFlight" value="Update" /> 
													<input type="submit"  style="width: 100px;"
													name="actionFlight" value="Delete" /> 
													<input type="submit"  style="width: 100px;"
													name="actionFlight" value="View Passengers" />
													<input type="submit"  style="width: 100px;"
													name="actionFlight" value="View Crew Details" />
														<input type="submit"  style="width: 100px;"
													name="actionFlight" value="Reserve"/> 
											</c:if>
											
												<c:if test ='<%=role.equalsIgnoreCase("Employee") %>'>
												<input type="submit"  style="width: 100px;"
													name="actionFlight" value="Update" /> 
													<input type="submit"  style="width: 100px;"
													name="actionFlight" value="Delete" /> 
													<input type="submit"  style="width: 100px;"
													name="actionFlight" value="View Passengers" />
													<input type="submit"  style="width: 100px;"
													name="actionFlight" value="View Crew Details" />
														<input type="submit"  style="width: 100px;"
													name="actionFlight" value="Reserve"/> 
											</c:if>
											
											<c:if test ='<%=role.equalsIgnoreCase("Customer") %>'>
											<input type="submit"  style="width: 100px;"
													name="actionFlight" value="Reserve" /> 	
											</c:if>	
											</form>
											</div>
					                   </td>
				
					</tr>
					</c:forEach>

</table>

</div>
</div>

</body>
</html>