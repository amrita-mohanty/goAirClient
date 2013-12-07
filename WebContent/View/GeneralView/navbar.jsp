<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
<%@ include file="/View/css/navbar.css" %>
<%@ include file="/View/css/structure.css" %>
</style>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
</head>

<body>
	<ul class="navigation">

           <li><c:if test="${not empty user.firstName}">
				<h3>
					<c:out value="Welcome, ${user.firstName}"></c:out>
				</h3> </c:if>
		   </li>
				
				
		   <li>

			<h3>Add a flight</h3>
			<p>
			<a href="../FlightView/addFlight.jsp">Add a Flight</a>
			</p></li>
			<li>
			<h3>Update a flight</h3>
			<p>
			<a href="../FlightView/updateFlight.jsp">Update a Flight</a>
			</p>
			</li>
			
			<li>
			<h3>View All Reservation</h3>
			<p>
			<a href="../ReservationView/viewAllReservations.jsp">View All Reservations</a>
			</p></li>
			
			<li>
			<h3>View All Customers</h3>
			<p>
			<a href="../CustomerView/viewAllCustomers">View All Customers</a>
			</p></li>
			
			<li>
			<h3>View All Employees</h3>
			<p>
			<a href="../EmployeeView/viewAllEmployees">View All Employees</a>
			</p></li>
			
			<li>
			<h3>Search Flight</h3>
			<p>
			<a href="../FlightView/FindFlight.jsp">Search Flights</a>
			</p></li>
			
			
			<li>
			<h3>Create Reservation</h3>
			<p>
			<a href="../ReservationView/createReservation.jsp">Create Reservation</a>
			</p></li>

	
			
			<li>
			<h3>Add Employee</h3>
			<p>
			<a href="../EmployeeView/addemployee.jsp">Add Employee</a>
			</p></li>
	</ul>
</body>
</html>