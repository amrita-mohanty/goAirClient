<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<% String role = (String)session.getAttribute("role"); %>
<!DOCTYPE HTML>
<html>
<head>
<title>Update Employee</title>
<meta charset="UTF-8" />
<style type="text/css">
<%@ include file="/View/css/reset.css" %>
<%@ include file="/View/css/structure.css" %>
</style>
</head>
<body>
<div id="navbar">
		<jsp:include page="/View/GeneralView/navbar.jsp"></jsp:include>
</div>
<div>
<c:if test="${message ne '' }">
<c:out value="${message }"></c:out>
</c:if>
</div>	

<form class="box login" name="updateEmployee" style="height: auto; top: 50%;" method="post" action="updateEmployee">
		<h3>
			<br> <label>Update an Employee !!! </label>
		</h3>
			<fieldset class="boxBody">
			<c:if test= "${employee.employeeId ne ''}">
			<label>Employee ID</label><c:out value = "${employee.employeeId}"/>
			<input type="hidden"  tabindex="2" value = "${employee.employeeId}" required name="employeeId">
			</c:if>
			
			<c:if test= "${employee.employeeId eq ''}">
			<label>Employee ID</label>
			<input type="text"  tabindex="2"  name="employeeId">
			</c:if>
			
			
			
			<label>First Name</label> <input type="text" tabindex="1" value = "${employee.firstName}"name="fname">	
			<label>Last Name</label> <input type="text" tabindex="1" value = "${employee.lastName}" name="lname">
			<label>Gender</label>	
					<select name="gender" class="cjComboBox">
		    		<option value="male">Male</option>
		    		<option value="female">Female</option>
		  			</select>
			
			<label>Address</label> <input type="text" tabindex="1" value = "${employee.address}" name="address">
			
			<label>City</label> <input type="text" tabindex="1" value = "${employee.city}" name="city">
			
			<label>State</label>
			<select name="state" class="cjComboBox" >
					<option value="">Pick your state</option>
					<option value="AL" ${employee.state == 'AL' ? 'selected' : ''} >Alabama</option>
					<option value="AK" ${employee.state == 'AK' ? 'selected' : ''}>Alaska</option>
					<option value="AZ" ${employee.state == 'AZ' ? 'selected' : ''}>Arizona</option>
					<option value="AR" ${employee.state == 'AR' ? 'selected' : ''}>Arkansas</option>
					<option value="CA" ${employee.state == 'CA' ? 'selected' : ''}>California</option>
					<option value="CO" ${employee.state == 'CO' ? 'selected' : ''}>Colorado</option>
					<option value="CT" ${employee.state == 'CT' ? 'selected' : ''}>Connecticut</option>
					<option value="DE" ${employee.state == 'DE' ? 'selected' : ''}>Delaware</option>
					<option value="DC" ${employee.state == 'DC' ? 'selected' : ''}>District of Columbia</option>
					<option value="FL" ${employee.state == 'FL' ? 'selected' : ''}>Florida</option>
					<option value="GA" ${employee.state == 'GA' ? 'selected' : ''}>Georgia</option>
					<option value="HI" ${employee.state == 'HI' ? 'selected' : ''}>Hawaii</option>
					<option value="ID" ${employee.state == 'ID' ? 'selected' : ''}>Idaho</option>
					<option value="IL" ${employee.state == 'IL' ? 'selected' : ''}>Illinois</option>
					<option value="IN" ${employee.state == 'IN' ? 'selected' : ''}>Indiana</option>
					<option value="IA" ${employee.state == 'IA' ? 'selected' : ''}>Iowa</option>
					<option value="KS" ${employee.state == 'KS' ? 'selected' : ''}>Kansas</option>
					<option value="KY" ${employee.state == 'KY' ? 'selected' : ''}>Kentucky</option>
					<option value="LA" ${employee.state == 'LA' ? 'selected' : ''}>Louisiana</option>
					<option value="ME" ${employee.state == 'ME' ? 'selected' : ''}>Maine</option>
					<option value="MD" ${employee.state == 'MD' ? 'selected' : ''}>Maryland</option>
					<option value="MA" ${employee.state == 'MA' ? 'selected' : ''}>Massachusetts</option>
					<option value="MI" ${employee.state == 'MI' ? 'selected' : ''}>Michigan</option>
					<option value="MN" ${employee.state == 'MN' ? 'selected' : ''}>Minnesota</option>
					<option value="MS" ${employee.state == 'MS' ? 'selected' : ''}>Mississippi</option>
					<option value="MO" ${employee.state == 'MO' ? 'selected' : ''}>Missouri</option>
					<option value="MT" ${employee.state == 'MT' ? 'selected' : ''}>Montana</option>
					<option value="NE" ${employee.state == 'NE' ? 'selected' : ''}>Nebraska</option>
					<option value="NV" ${employee.state == 'NV' ? 'selected' : ''}>Nevada</option>
					<option value="NH" ${employee.state == 'NH' ? 'selected' : ''}>New Hampshire</option>
					<option value="NJ" ${employee.state == 'NJ' ? 'selected' : ''}>New Jersey</option>
					<option value="NM" ${employee.state == 'NM' ? 'selected' : ''}>New Mexico</option>
					<option value="NY" ${employee.state == 'NY' ? 'selected' : ''}>New York</option>
					<option value="NC" ${employee.state == 'NC' ? 'selected' : ''}>North Carolina</option>
					<option value="ND" ${employee.state == 'ND' ? 'selected' : ''}>North Dakota</option>
					<option value="OH" ${employee.state == 'OH' ? 'selected' : ''}>Ohio</option>
					<option value="OK" ${employee.state == 'OK' ? 'selected' : ''}>Oklahoma</option>
					<option value="OR" ${employee.state == 'OR' ? 'selected' : ''}>Oregon</option>
					<option value="PA" ${employee.state == 'PA' ? 'selected' : ''}>Pennsylvania</option>
					<option value="RI" ${employee.state == 'RI' ? 'selected' : ''}>Rhode Island</option>
					<option value="SC" ${employee.state == 'SC' ? 'selected' : ''}>South Carolina</option>
					<option value="SD" ${employee.state == 'SD' ? 'selected' : ''}>South Dakota</option>
					<option value="TN" ${employee.state == 'TN' ? 'selected' : ''}>Tennessee</option>
					<option value="TX" ${employee.state == 'TX' ? 'selected' : ''}>Texas</option>
					<option value="UT" ${employee.state == 'UT' ? 'selected' : ''}>Utah</option>
					<option value="VT" ${employee.state == 'VT' ? 'selected' : ''}>Vermont</option>
					<option value="VA" ${employee.state == 'VA' ? 'selected' : ''}>Virginia</option>
					<option value="WA" ${employee.state == 'WA' ? 'selected' : ''}>Washington</option>
					<option value="WV" ${employee.state == 'WV' ? 'selected' : ''}>West Virginia</option>
					<option value="WI" ${employee.state == 'WI' ? 'selected' : ''}>Wisconsin</option>
					<option value="WY" ${employee.state == 'WY' ? 'selected' : ''}>Wyoming</option>
				</select>
			
			
			
			<label>Zip Code</label> <input type="text" tabindex="1" value = "${employee.zipcode}"name="zipcode">
			
			<label>Date of Birth</label>
			<select name="month" class="cjComboBox">
					<option value=""></option>
					<option value="Jan" ${bMonth == '1' ? 'selected' : ''} >January</option>
					<option value="Feb" ${bMonth == '2' ? 'selected' : ''} >Febraury</option>
					<option value="Mar" ${bMonth == '3' ? 'selected' : ''} >March</option>
					<option value="Apr" ${bMonth == '4' ? 'selected' : ''} >April</option>
					<option value="May" ${bMonth == '5' ? 'selected' : ''} >May</option>
					<option value="Jun" ${bMonth == '6' ? 'selected' : ''} >June</option>
					<option value="Jul" ${bMonth == '7' ? 'selected' : ''} >July</option>
					<option value="Aug" ${bMonth == '8' ? 'selected' : ''} >August</option>
					<option value="Sep" ${bMonth == '9' ? 'selected' : ''} >September</option>
					<option value="Oct" ${bMonth == '10' ? 'selected' : ''} >October</option>
					<option value="Nov" ${bMonth == '11' ? 'selected' : ''} >November</option>
					<option value="Dec" ${bMonth == '12' ? 'selected' : ''} >December</option>
			</select>
			
			<select name="day" class="cjComboBox">
					<option value=""></option>
					<option value="01" ${bDay == '1' ? 'selected' : ''} >1</option>
					<option value="02" ${bDay == '2' ? 'selected' : ''} >2</option>
					<option value="03" ${bDay == '3' ? 'selected' : ''} >3</option>
					<option value="04" ${bDay == '4' ? 'selected' : ''} >4</option>
					<option value="05" ${bDay == '5' ? 'selected' : ''} >5</option>
					<option value="06" ${bDay == '6' ? 'selected' : ''} >6</option>
					<option value="07" ${bDay == '7' ? 'selected' : ''} >7</option>
					<option value="08" ${bDay == '8' ? 'selected' : ''} >8</option>
					<option value="09" ${bDay == '9' ? 'selected' : ''} >9</option>
					<option value="10" ${bDay == '10' ? 'selected' : ''} >10</option>
					<option value="11" ${bDay == '11' ? 'selected' : ''} >11</option>
					<option value="12" ${bDay == '12' ? 'selected' : ''} >12</option>
					<option value="13" ${bDay == '13' ? 'selected' : ''} >13</option>
					<option value="14" ${bDay == '14' ? 'selected' : ''} >14</option>
					<option value="15" ${bDay == '15' ? 'selected' : ''} >15</option>
					<option value="16" ${bDay == '16' ? 'selected' : ''} >16</option>
					<option value="17" ${bDay == '17' ? 'selected' : ''} >17</option>
					<option value="18" ${bDay == '18' ? 'selected' : ''} >18</option>
					<option value="19" ${bDay == '19' ? 'selected' : ''} >19</option>
					<option value="20" ${bDay == '20' ? 'selected' : ''} >20</option>
					<option value="21" ${bDay == '21' ? 'selected' : ''} >21</option>
					<option value="22" ${bDay == '22' ? 'selected' : ''} >22</option>
					<option value="23" ${bDay == '23' ? 'selected' : ''} >23</option>
					<option value="24" ${bDay == '24' ? 'selected' : ''} >24</option>
					<option value="25" ${bDay == '25' ? 'selected' : ''} >25</option>
					<option value="26" ${bDay == '26' ? 'selected' : ''} >26</option>
					<option value="27" ${bDay == '27' ? 'selected' : ''} >27</option>
					<option value="28" ${bDay == '28' ? 'selected' : ''} >28</option>
					<option value="29" ${bDay == '29' ? 'selected' : ''} >29</option>
					<option value="30" ${bDay == '30' ? 'selected' : ''} >30</option>
					<option value="31" ${bDay == '31' ? 'selected' : ''} >31</option>
			</select>
			
			<select name="year" class="cjComboBox">
				    <option value=""></option>
					<option value="1945" ${bYear == '1945' ? 'selected' : ''} >1945</option>
					<option value="1946" ${bYear == '1946' ? 'selected' : ''} >1946</option>
					<option value="1947" ${bYear == '1947' ? 'selected' : ''} >1947</option>
					<option value="1948" ${bYear == '1948' ? 'selected' : ''} >1948</option>
					<option value="1949" ${bYear == '1949' ? 'selected' : ''} >1949</option>
					<option value="1950" ${bYear == '1950' ? 'selected' : ''} >1950</option>
					<option value="1951" ${bYear == '1951' ? 'selected' : ''} >1951</option>
					<option value="1952" ${bYear == '1952' ? 'selected' : ''} >1952</option>
					<option value="1953" ${bYear == '1953' ? 'selected' : ''} >1953</option>
					<option value="1954" ${bYear == '1954' ? 'selected' : ''} >1954</option>
					<option value="1955" ${bYear == '1955' ? 'selected' : ''} >1955</option>
					<option value="1956" ${bYear == '1956' ? 'selected' : ''} >1956</option>
					<option value="1957" ${bYear == '1957' ? 'selected' : ''} >1957</option>
					<option value="1958" ${bYear == '1958' ? 'selected' : ''} >1958</option>
					<option value="1959" ${bYear == '1959' ? 'selected' : ''} >1959</option>
					<option value="1960" ${bYear == '1960' ? 'selected' : ''} >1960</option>
					<option value="1961" ${bYear == '1961' ? 'selected' : ''} >1961</option>
					<option value="1962" ${bYear == '1962' ? 'selected' : ''} >1962</option>
					<option value="1963" ${bYear == '1963' ? 'selected' : ''} >1963</option>
					<option value="1964" ${bYear == '1964' ? 'selected' : ''} >1964</option>
					<option value="1965" ${bYear == '1965' ? 'selected' : ''} >1965</option>
					<option value="1966" ${bYear == '1966' ? 'selected' : ''} >1966</option>
					<option value="1967" ${bYear == '1967' ? 'selected' : ''} >1967</option>
					<option value="1968" ${bYear == '1968' ? 'selected' : ''} >1968</option>
					<option value="1969" ${bYear == '1969' ? 'selected' : ''} >1969</option>
					<option value="1970" ${bYear == '1970' ? 'selected' : ''} >1970</option>
					<option value="1971" ${bYear == '1971' ? 'selected' : ''} >1971</option>
					<option value="1972" ${bYear == '1972' ? 'selected' : ''} >1972</option>
					<option value="1973" ${bYear == '1973' ? 'selected' : ''} >1973</option>
					<option value="1974" ${bYear == '1974' ? 'selected' : ''} >1974</option>
					<option value="1975" ${bYear == '1975' ? 'selected' : ''} >1975</option>
					<option value="1976" ${bYear == '1976' ? 'selected' : ''} >1976</option>
					<option value="1977" ${bYear == '1977' ? 'selected' : ''} >1977</option>
					<option value="1978" ${bYear == '1978' ? 'selected' : ''} >1978</option>
					<option value="1979" ${bYear == '1979' ? 'selected' : ''} >1979</option>
					<option value="1980" ${bYear == '1980' ? 'selected' : ''} >1980</option>
					<option value="1981" ${bYear == '1981' ? 'selected' : ''} >1981</option>
					<option value="1982" ${bYear == '1982' ? 'selected' : ''} >1982</option>
					<option value="1983" ${bYear == '1983' ? 'selected' : ''} >1983</option>	
					<option value="1984" ${bYear == '1984' ? 'selected' : ''} >1984</option>	
					<option value="1985" ${bYear == '1985' ? 'selected' : ''} >1985</option>	
					<option value="1986" ${bYear == '1986' ? 'selected' : ''} >1986</option>	
					<option value="1987" ${bYear == '1987' ? 'selected' : ''} >1987</option>	
					<option value="1988" ${bYear == '1988' ? 'selected' : ''} >1988</option>	
					<option value="1989" ${bYear == '1989' ? 'selected' : ''} >1989</option>	
					<option value="1990" ${bYear == '1990' ? 'selected' : ''} >1990</option>	
					<option value="1991" ${bYear == '1991' ? 'selected' : ''} >1991</option>	
					<option value="1992" ${bYear == '1992' ? 'selected' : ''} >1992</option>
					<option value="1993" ${bYear == '1993' ? 'selected' : ''} >1993</option>	
					<option value="1994" ${bYear == '1994' ? 'selected' : ''} >1994</option>	
					<option value="1995" ${bYear == '1995' ? 'selected' : ''} >1995</option>	
					<option value="1996" ${bYear == '1996' ? 'selected' : ''} >1996</option>	
					<option value="1997" ${bYear == '1997' ? 'selected' : ''} >1997</option>	
					<option value="1998" ${bYear == '1998' ? 'selected' : ''} >1998</option>	
					<option value="1999" ${bYear == '1999' ? 'selected' : ''} >1999</option>	
					<option value="2000" ${bYear == '2000' ? 'selected' : ''} >2000</option>	
					<option value="2001" ${bYear == '2001' ? 'selected' : ''} >2001</option>	
					<option value="2002" ${bYear == '2002' ? 'selected' : ''} >2002</option>	
					<option value="2003" ${bYear == '2003' ? 'selected' : ''} >2003</option>	
					<option value="2004" ${bYear == '2004' ? 'selected' : ''} >2004</option>	
					<option value="2005" ${bYear == '2005' ? 'selected' : ''} >2005</option>	
					<option value="2006" ${bYear == '2006' ? 'selected' : ''} >2006</option>	
					<option value="2007" ${bYear == '2007' ? 'selected' : ''} >2007</option>	
					<option value="2008" ${bYear == '2008' ? 'selected' : ''} >2008</option>	
					<option value="2009" ${bYear == '2009' ? 'selected' : ''} >2009</option>	
					<option value="2010" ${bYear == '2010' ? 'selected' : ''} >2010</option>	
					<option value="2011" ${bYear == '2011' ? 'selected' : ''} >2011</option>	
					<option value="2012" ${bYear == '2012' ? 'selected' : ''} >2012</option>	
					<option value="2013" ${bYear == '2013' ? 'selected' : ''} >2013</option>					
			</select>
			
			
			
			<label>Airline Name</label> <input type="text" tabindex="1" value = "${employee.airlineName}" name="airlineName">
			<label>Job Description</label> <input type="text" tabindex="1" value = "${employee.jobDesc}" name="jobDesc">
			<label>Position</label> <input type="text" tabindex="1" value = "${employee.position}" name="position">
			
			<label>Date of Hire</label>
			<select name="month" class="cjComboBox">
					<option value=""></option>
					<option value="Jan" ${hMonth == '1' ? 'selected' : ''} >January</option>
					<option value="Feb" ${hMonth == '2' ? 'selected' : ''} >Febraury</option>
					<option value="Mar" ${hMonth == '3' ? 'selected' : ''} >March</option>
					<option value="Apr" ${hMonth == '4' ? 'selected' : ''} >April</option>
					<option value="May" ${hMonth == '5' ? 'selected' : ''} >May</option>
					<option value="Jun" ${hMonth == '6' ? 'selected' : ''} >June</option>
					<option value="Jul" ${hMonth == '7' ? 'selected' : ''} >July</option>
					<option value="Aug" ${hMonth == '8' ? 'selected' : ''} >August</option>
					<option value="Sep" ${hMonth == '9' ? 'selected' : ''} >September</option>
					<option value="Oct" ${hMonth == '10' ? 'selected' : ''} >October</option>
					<option value="Nov" ${hMonth == '11' ? 'selected' : ''} >November</option>
					<option value="Dec" ${hMonth == '12' ? 'selected' : ''} >December</option>
			</select>
			
			<select name="day" class="cjComboBox">
					<option value=""></option>
					<option value="01" ${hDay == '1' ? 'selected' : ''} >1</option>
					<option value="02" ${hDay == '2' ? 'selected' : ''} >2</option>
					<option value="03" ${hDay == '3' ? 'selected' : ''} >3</option>
					<option value="04" ${hDay == '4' ? 'selected' : ''} >4</option>
					<option value="05" ${hDay == '5' ? 'selected' : ''} >5</option>
					<option value="06" ${hDay == '6' ? 'selected' : ''} >6</option>
					<option value="07" ${hDay == '7' ? 'selected' : ''} >7</option>
					<option value="08" ${hDay == '8' ? 'selected' : ''} >8</option>
					<option value="09" ${hDay == '9' ? 'selected' : ''} >9</option>
					<option value="10" ${hDay == '10' ? 'selected' : ''} >10</option>
					<option value="11" ${hDay == '11' ? 'selected' : ''} >11</option>
					<option value="12" ${hDay == '12' ? 'selected' : ''} >12</option>
					<option value="13" ${hDay == '13' ? 'selected' : ''} >13</option>
					<option value="14" ${hDay == '14' ? 'selected' : ''} >14</option>
					<option value="15" ${hDay == '15' ? 'selected' : ''} >15</option>
					<option value="16" ${hDay == '16' ? 'selected' : ''} >16</option>
					<option value="17" ${hDay == '17' ? 'selected' : ''} >17</option>
					<option value="18" ${hDay == '18' ? 'selected' : ''} >18</option>
					<option value="19" ${hDay == '19' ? 'selected' : ''} >19</option>
					<option value="20" ${hDay == '20' ? 'selected' : ''} >20</option>
					<option value="21" ${hDay == '21' ? 'selected' : ''} >21</option>
					<option value="22" ${hDay == '22' ? 'selected' : ''} >22</option>
					<option value="23" ${hDay == '23' ? 'selected' : ''} >23</option>
					<option value="24" ${hDay == '24' ? 'selected' : ''} >24</option>
					<option value="25" ${hDay == '25' ? 'selected' : ''} >25</option>
					<option value="26" ${hDay == '26' ? 'selected' : ''} >26</option>
					<option value="27" ${hDay == '27' ? 'selected' : ''} >27</option>
					<option value="28" ${hDay == '28' ? 'selected' : ''} >28</option>
					<option value="29" ${hDay == '29' ? 'selected' : ''} >29</option>
					<option value="30" ${hDay == '30' ? 'selected' : ''} >30</option>
					<option value="31" ${hDay == '31' ? 'selected' : ''} >31</option>
			</select>
			
			<select name="year" class="cjComboBox">
				    <option value=""></option>
					<option value="1945" ${hYear == '1945' ? 'selected' : ''} >1945</option>
					<option value="1946" ${hYear == '1946' ? 'selected' : ''} >1946</option>
					<option value="1947" ${hYear == '1947' ? 'selected' : ''} >1947</option>
					<option value="1948" ${hYear == '1948' ? 'selected' : ''} >1948</option>
					<option value="1949" ${hYear == '1949' ? 'selected' : ''} >1949</option>
					<option value="1950" ${hYear == '1950' ? 'selected' : ''} >1950</option>
					<option value="1951" ${hYear == '1951' ? 'selected' : ''} >1951</option>
					<option value="1952" ${hYear == '1952' ? 'selected' : ''} >1952</option>
					<option value="1953" ${hYear == '1953' ? 'selected' : ''} >1953</option>
					<option value="1954" ${hYear == '1954' ? 'selected' : ''} >1954</option>
					<option value="1955" ${hYear == '1955' ? 'selected' : ''} >1955</option>
					<option value="1956" ${hYear == '1956' ? 'selected' : ''} >1956</option>
					<option value="1957" ${hYear == '1957' ? 'selected' : ''} >1957</option>
					<option value="1958" ${hYear == '1958' ? 'selected' : ''} >1958</option>
					<option value="1959" ${hYear == '1959' ? 'selected' : ''} >1959</option>
					<option value="1960" ${hYear == '1960' ? 'selected' : ''} >1960</option>
					<option value="1961" ${hYear == '1961' ? 'selected' : ''} >1961</option>
					<option value="1962" ${hYear == '1962' ? 'selected' : ''} >1962</option>
					<option value="1963" ${hYear == '1963' ? 'selected' : ''} >1963</option>
					<option value="1964" ${hYear == '1964' ? 'selected' : ''} >1964</option>
					<option value="1965" ${hYear == '1965' ? 'selected' : ''} >1965</option>
					<option value="1966" ${hYear == '1966' ? 'selected' : ''} >1966</option>
					<option value="1967" ${hYear == '1967' ? 'selected' : ''} >1967</option>
					<option value="1968" ${hYear == '1968' ? 'selected' : ''} >1968</option>
					<option value="1969" ${hYear == '1969' ? 'selected' : ''} >1969</option>
					<option value="1970" ${hYear == '1970' ? 'selected' : ''} >1970</option>
					<option value="1971" ${hYear == '1971' ? 'selected' : ''} >1971</option>
					<option value="1972" ${hYear == '1972' ? 'selected' : ''} >1972</option>
					<option value="1973" ${hYear == '1973' ? 'selected' : ''} >1973</option>
					<option value="1974" ${hYear == '1974' ? 'selected' : ''} >1974</option>
					<option value="1975" ${hYear == '1975' ? 'selected' : ''} >1975</option>
					<option value="1976" ${hYear == '1976' ? 'selected' : ''} >1976</option>
					<option value="1977" ${hYear == '1977' ? 'selected' : ''} >1977</option>
					<option value="1978" ${hYear == '1978' ? 'selected' : ''} >1978</option>
					<option value="1979" ${hYear == '1979' ? 'selected' : ''} >1979</option>
					<option value="1980" ${hYear == '1980' ? 'selected' : ''} >1980</option>
					<option value="1981" ${hYear == '1981' ? 'selected' : ''} >1981</option>
					<option value="1982" ${hYear == '1982' ? 'selected' : ''} >1982</option>
					<option value="1983" ${hYear == '1983' ? 'selected' : ''} >1983</option>	
					<option value="1984" ${hYear == '1984' ? 'selected' : ''} >1984</option>	
					<option value="1985" ${hYear == '1985' ? 'selected' : ''} >1985</option>	
					<option value="1986" ${hYear == '1986' ? 'selected' : ''} >1986</option>	
					<option value="1987" ${hYear == '1987' ? 'selected' : ''} >1987</option>	
					<option value="1988" ${hYear == '1988' ? 'selected' : ''} >1988</option>	
					<option value="1989" ${hYear == '1989' ? 'selected' : ''} >1989</option>	
					<option value="1990" ${hYear == '1990' ? 'selected' : ''} >1990</option>	
					<option value="1991" ${hYear == '1991' ? 'selected' : ''} >1991</option>	
					<option value="1992" ${hYear == '1992' ? 'selected' : ''} >1992</option>
					<option value="1993" ${hYear == '1993' ? 'selected' : ''} >1993</option>	
					<option value="1994" ${hYear == '1994' ? 'selected' : ''} >1994</option>	
					<option value="1995" ${hYear == '1995' ? 'selected' : ''} >1995</option>	
					<option value="1996" ${hYear == '1996' ? 'selected' : ''} >1996</option>	
					<option value="1997" ${hYear == '1997' ? 'selected' : ''} >1997</option>	
					<option value="1998" ${hYear == '1998' ? 'selected' : ''} >1998</option>	
					<option value="1999" ${hYear == '1999' ? 'selected' : ''} >1999</option>	
					<option value="2000" ${hYear == '2000' ? 'selected' : ''} >2000</option>	
					<option value="2001" ${hYear == '2001' ? 'selected' : ''} >2001</option>	
					<option value="2002" ${hYear == '2002' ? 'selected' : ''} >2002</option>	
					<option value="2003" ${hYear == '2003' ? 'selected' : ''} >2003</option>	
					<option value="2004" ${hYear == '2004' ? 'selected' : ''} >2004</option>	
					<option value="2005" ${hYear == '2005' ? 'selected' : ''} >2005</option>	
					<option value="2006" ${hYear == '2006' ? 'selected' : ''} >2006</option>	
					<option value="2007" ${hYear == '2007' ? 'selected' : ''} >2007</option>	
					<option value="2008" ${hYear == '2008' ? 'selected' : ''} >2008</option>	
					<option value="2009" ${hYear == '2009' ? 'selected' : ''} >2009</option>	
					<option value="2010" ${hYear == '2010' ? 'selected' : ''} >2010</option>	
					<option value="2011" ${hYear == '2011' ? 'selected' : ''} >2011</option>	
					<option value="2012" ${hYear == '2012' ? 'selected' : ''} >2012</option>	
					<option value="2013" ${hYear == '2013' ? 'selected' : ''} >2013</option>					
			</select>		
		
		
			<label>Email</label>
			<input type="text"  tabindex="2" value = "${employee.emailId}" required name="email">
			<c:if test ='<%=role.equalsIgnoreCase("Employee") %>'>
				<label>Password</label>
				<input type="password"  tabindex="2" value = "${employee.password}" required name="password">
			</c:if>	
	
			</fieldset>
		
</form>


</body>
</html>