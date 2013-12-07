<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% String role = (String)session.getAttribute("role"); %>

<!DOCTYPE HTML>
<html>
<head>



<title>View All Customers</title>
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


<table style="width: 150%;">
<thead>
<tr>
<th>Customer ID</th>
<th>First Name</th>
<th>Last Name</th>
<th>Email</th>
<th>Gender</th>
<th>Address</th>
<th>City</th>
<th>State</th>
<th>Zip Code</th>
<th>Date of Birth</th>
<th>Passport Number</th>
<th>Nationality</th>
</tr>
</thead>



<tbody>
<c:forEach items="${customers}"  var="item" >


<tr>
<td>${item.customerId}</td>
<td>${item.firstName}</td>
<td>${item.lastName}</td>
<td>${item.emailId}</td>
<td>${item.gender}</td>
<td>${item.address}</td>
<td>${item.city}</td>
<td>${item.state}</td>
<td>${item.zipcode}</td>  
<td><fmt:formatDate value="${item.dob.time}" type = "DATE" pattern="MM/dd/yyyy"/></td>
<td>${item.passportNum}</td>
<td>${item.nationality}</td>

<td><form method="post" action="editDeleteCustomer">

<input type="hidden" value= '${item.customerId}' name="customerId">
<input type="hidden" value= '${item.password}' name="password">
<input type="hidden" value= '${item.firstName}' name="firstName">
<input type="hidden" value= '${item.lastName}' name="lastName">
<input type="hidden" value= '${item.emailId}' name="emailId">
<input type="hidden" value= '${item.gender}' name="gender">
<input type="hidden" value= '${item.address}' name="address">
<input type="hidden" value= '${item.city}' name="city">
<input type="hidden" value= '${item.state}' name="state">
<input type="hidden" value= '${item.zipcode}' name="state">
<input type="hidden" value= '${item.dob.time}' name="dob">
<input type="hidden" value= '${item.nationality}' name="nationality">
<input type="hidden" value= '${item.passportNum}' name="passportNum">

<input class="btnLogin" type="submit" value="Delete" name = "editDeleteCustomer"/>
<input class="btnLogin" type="submit" value="Edit" name = "editDeleteCustomer" />

</form><td>


<td>
</tr> 
</c:forEach>
</tbody>
</table>
</div>
</div>
</html>