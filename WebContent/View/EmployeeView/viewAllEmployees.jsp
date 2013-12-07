<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% String role = (String)session.getAttribute("role"); %>

<!DOCTYPE HTML>
<html>
<head>



<title>View All Employees</title>
<meta charset="UTF-8" />
<style type="text/css">
<%@ include file="/View/css/reset.css" %>
<%@ include file="/View/css/structure.css" %>
table {
	margin-left: auto;
	margin-right: auto;
}

</style>

</head>
<body>
<div id="navbar">
		<jsp:include page="/View/GeneralView/navbar.jsp"></jsp:include>
</div>
	

<div id="container">
<div id = "content">
<div>
<c:if test="${message ne '' }">
<c:out value="${message }"></c:out>
</c:if>
</div>	

<table style="width: 180%;">
<thead>
<tr>
<th>Employee ID</th>
<th>First Name</th>
<th>Last Name</th>
<th>Email</th>
<th>Gender</th>
<th>Date of Birth</th>
<th>Address</th>
<th>City</th>
<th>State</th>
<th>Zip Code</th>
<th>Airline Name</th>
<th>Job Description</th>
<th>Position</th>

<th>Date Of Hire</th>
</tr>
</thead>

				
<tbody>
<c:forEach items="${employees}" var="item" >
<tr>
<td>${item.employeeId}</td>
<td>${item.firstName}</td>
<td>${item.lastName}</td>
<td>${item.emailId}</td>
<td>${item.gender}</td>
<td><fmt:formatDate value="${item.dob.time}" type = "DATE" pattern="MM/dd/yyyy"/></td>
<td>${item.address}</td>
<td>${item.city}</td>
<td>${item.state}</td>
<td>${item.zipcode}</td>
<td>${item.airlineName}</td>
<td>${item.jobDesc}</td>
<td>${item.position}</td>


<td><fmt:formatDate value="${item.hireDate.time}" type = "DATE" pattern="MM/dd/yyyy"/></td>

<td><form method="post" action="editDeleteEmployee">

<input type="hidden" value= '${item.employeeId}' name="employeeId">
<input type="hidden" value= '${item.password}' name="password">
<input type="hidden" value= '${item.firstName}' name="firstName">
<input type="hidden" value= '${item.lastName}' name="lastName">
<input type="hidden" value= '${item.emailId}' name="emailId">
<input type="hidden" value= '${item.gender}' name="gender">
<input type="hidden" value= '${item.address}' name="address">
<input type="hidden" value= '${item.city}' name="city">
<input type="hidden" value= '${item.state}' name="state">
<input type="hidden" value= '${item.zipcode}' name="state">
<input type="hidden" value= '${item.dob}' name="dob">
<input type="hidden" value= '${item.airlineName}' name="airlineName">
<input type="hidden" value= '${item.jobDesc}' name="jobDesc">
<input type="hidden" value= '${item.position}' name="position">
<input type="hidden" value= '${item.hireDate}' name="hireDate">

<input class="btnLogin" type="submit" value="Edit" name = "editDeleteEmployee" />
<input class="btnLogin" type="submit" value="Delete" name = "editDeleteEmployee"/>
</form></td>

<td>
</tr> 
</c:forEach>
</tbody>
</table>
</div>
</div>
</html>