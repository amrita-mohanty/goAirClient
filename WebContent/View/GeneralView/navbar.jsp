<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<% String role = (String)session.getAttribute("role"); %>
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
			<h3>Home Page</h3>
			<p>
			<a href="../GeneralView/welcome.jsp">Home Page</a>
			</p></li>
			
				
		<c:if test ='<%=role.equalsIgnoreCase("Customer") %>'>
		
			
			<li>
			<h3>Edit Customer Profile</h3>
			<p>
			<a href="../CustomerView/editProfileCustomer">Edit Profile</a>
			</p></li>
			
			
			<li>
			<h3>Search Flight</h3>
			<p>
			<a href="../FlightView/FindFlight.jsp">Search Flights</a>
			</p></li>
			

			

		</c:if>	
		
		
		<c:if test ='<%=role.equalsIgnoreCase("Admin") %>'>
		
			<li><h3>Add Employee</h3>
			<p>
			<a href="../EmployeeView/addemployee.jsp">Add Employee</a>
			</p></li>
			
			<li><h3>Search Employee</h3>
			<p>
			<a href="../EmployeeView/searchemployee.jsp">Search Employee</a>
			</p></li>
			
			<li>
			<h3>View All Employees</h3>
			<p>
			<a href="../EmployeeView/viewAllEmployees.jsp">View All Employees</a>
			</p></li>
			
				
			<li>
			<h3>Delete Employee</h3>
			<p>
			<a href="../EmployeeView/deleteemployee.jsp">Delete Employee</a>
			</p></li>
			
			<li>
			<h3>Update Employee</h3>
			<p>
			<a href="../EmployeeView/editemployee.jsp">Update Employee</a>
			</p></li>
			
			
			
			<li><h3>Add Customer</h3>
			<p>
			<a href="../CustomerView/SignUp.jsp">Add Customer</a>
			</p></li>
			
			<li><h3>Search Customer</h3>
			<p>
			<a href="../CustomerView/searchCustomer.jsp">Search Customer</a>
			</p></li>
			

			<li>
			<h3>View All Customers</h3>
			<p>
			<a href="../CustomerView/viewAllCustomers.jsp">View All Customers</a>
			</p></li>
			
				
			<li>
			<h3>Delete Customer</h3>
			<p>
			<a href="../CustomerView/deleteCustomer.jsp">Delete Employee</a>
			</p></li>
			
			<li>
			<h3>Update Customer</h3>
			<p>
			<a href="../EmployeeView/updateCustomer.jsp">Update Customer</a>
			</p></li>
	
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
			<h3>Search Flight</h3>
			<p>
			<a href="../FlightView/FindFlight.jsp">Search Flights</a>
			</p></li>
			
			
	
			
			<li>
			<h3>View All Reservation</h3>
			<p>
			<a href="../ReservationView/viewAllReservations.jsp">View All Reservations</a>
			</p></li>
			
			<li>
			<h3>Cancel Reservation</h3>
			<p>
			<a href="../ReservationView/cancelReservation.jsp">Cancel Reservations</a>
			</p></li>

		</c:if>
		
		
		<c:if test ='<%=role.equalsIgnoreCase("Employee") %>'>
			
			<li><h3>Add Customer</h3>
			<p>
			<a href="../CustomerView/SignUp.jsp">Add Customer</a>
			</p></li>
			
			<li><h3>Search Customer</h3>
			<p>
			<a href="../CustomerView/searchCustomer.jsp">Search Customer</a>
			</p></li>
			

			<li>
			<h3>View All Customers</h3>
			<p>
			<a href="../CustomerView/viewAllCustomers">View All Customers</a>
			</p></li>
			
				
			<li>
			<h3>Delete Customer</h3>
			<p>
			<a href="../CustomerView/deleteCustomer.jsp">Delete Customer</a>
			</p></li>
			
			<li>
			<h3>Update Customer</h3>
			<p>
			<a href="../EmployeeView/updateCustomer.jsp">Update Customer</a>
			</p></li>
		   	<li>
		   
			
			<li>
			<h3>Edit Employee Profile</h3>
			<p>
			<a href="../View/EmployeeView/editProfileEmployee">Edit Profile</a>
			</p></li>

			
			<li>
			<h3>Search Flight</h3>
			<p>
			<a href="../FlightView/FindFlight.jsp">Search Flights</a>
			</p></li>
			
			
			
			<li>
			<h3>View All Reservation</h3>
			<p>
			<a href="../ReservationView/viewAllReservations.jsp">View All Reservations</a>
			</p></li>
			
			<li>
			<h3>Cancel Reservation</h3>
			<p>
			<a href="../ReservationView/cancelReservation.jsp">Cancel Reservations</a>
			</p></li>
			
		
		</c:if>	
		
		 
		   <li>
			<h3>Sign Out</h3>
			<p>
			<a href="../GeneralView/signOut">Sign Out</a>
			</p></li>
			
			
	</ul>
</body>
</html>