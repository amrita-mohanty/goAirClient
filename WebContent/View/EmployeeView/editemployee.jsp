<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<% String role = (String)session.getAttribute("role"); %>
<!DOCTYPE HTML>
<html>
<head>
<title>Edit Employee</title>
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

<form class="box login"  name="editemployee" style="height: auto; top: 50%;" method="post" action="editemployee">
	<table style="width: 100%;">
		<h3>
			<br> <label>Edit Employee!!</label>
		</h3>
			<fieldset class="boxBody">
			<label>Employee ID</label> <input type="text"  tabindex="2" value = "${employee.employeeId}" required name="employeeId">
			
			
			<label>First Name</label> <input type="text" tabindex="1" value = "${employee.firstName}"name="firstName">	
			<label>Last Name</label> <input type="text" tabindex="1" value = "${employee.lastName}" name="lastName">
			<label>Gender</label>	
					<select name="gender" class="cjComboBox">
		    		<option value="male">Male</option>
		    		<option value="female">Female</option>
		  			</select>
			
			<label>Address</label> <input type="text" tabindex="1" value = "${employee.address}" name="address">			
			<label>City</label> <input type="text" tabindex="1" value = "${employee.city}" name="city">
			<label>Airline Name</label> <input type="text" tabindex="1" value = "${employee.airlineName}" name="airlineName">
			<label>Job Description</label> <input type="text" tabindex="1" value = "${employee.jobDesc}" name="jobDesc">
			<label>Position</label> <input type="text" tabindex="1" value = "${employee.position}" name="position">
			
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
			
			
			
			<label>Zip Code</label> <input type="text" tabindex="1" value = "${customer.zipcode}"name="zipcode">
			
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
					<option value="1945">1945 ${bYear == '1945' ? 'selected' : ''} </option>
					<option value="1946">1946 ${bYear == '1946' ? 'selected' : ''} </option>
					<option value="1947">1947 ${bYear == '1947' ? 'selected' : ''} </option>
					<option value="1948">1948 ${bYear == '1948' ? 'selected' : ''} </option>
					<option value="1949">1949 ${bYear == '1949' ? 'selected' : ''} </option>
					<option value="1950">1950 ${bYear == '1950' ? 'selected' : ''} </option>
					<option value="1951">1951 ${bYear == '1951' ? 'selected' : ''} </option>
					<option value="1952">1952 ${bYear == '1952' ? 'selected' : ''} </option>
					<option value="1953">1953 ${bYear == '1953' ? 'selected' : ''} </option>
					<option value="1954">1954 ${bYear == '1954' ? 'selected' : ''} </option>
					<option value="1955">1955 ${bYear == '1955' ? 'selected' : ''} </option>
					<option value="1956">1956 ${bYear == '1956' ? 'selected' : ''} </option>
					<option value="1957">1957 ${bYear == '1957' ? 'selected' : ''} </option>
					<option value="1958">1958 ${bYear == '1958' ? 'selected' : ''} </option>
					<option value="1959">1959 ${bYear == '1959' ? 'selected' : ''} </option>
					<option value="1960">1960 ${bYear == '1960' ? 'selected' : ''} </option>
					<option value="1961">1961 ${bYear == '1961' ? 'selected' : ''} </option>
					<option value="1962">1962 ${bYear == '1962' ? 'selected' : ''} </option>
					<option value="1963">1963 ${bYear == '1963' ? 'selected' : ''} </option>
					<option value="1964">1964 ${bYear == '1964' ? 'selected' : ''} </option>
					<option value="1965">1965 ${bYear == '1965' ? 'selected' : ''} </option>
					<option value="1966">1966 ${bYear == '1966' ? 'selected' : ''} </option>
					<option value="1967">1967 ${bYear == '1967' ? 'selected' : ''} </option>
					<option value="1968">1968 ${bYear == '1968' ? 'selected' : ''} </option>
					<option value="1969">1969 ${bYear == '1969' ? 'selected' : ''} </option>
					<option value="1970">1970 ${bYear == '1970' ? 'selected' : ''} </option>
					<option value="1971">1971 ${bYear == '1971' ? 'selected' : ''} </option>
					<option value="1972">1972 ${bYear == '1972' ? 'selected' : ''} </option>
					<option value="1973">1973 ${bYear == '1973' ? 'selected' : ''} </option>
					<option value="1974">1974 ${bYear == '1974' ? 'selected' : ''} </option>
					<option value="1975">1975 ${bYear == '1975' ? 'selected' : ''} </option>
					<option value="1976">1976 ${bYear == '1976' ? 'selected' : ''} </option>
					<option value="1977">1977 ${bYear == '1977' ? 'selected' : ''} </option>
					<option value="1978">1978 ${bYear == '1978' ? 'selected' : ''} </option>
					<option value="1979">1979 ${bYear == '1979' ? 'selected' : ''} </option>
					<option value="1980">1980 ${bYear == '1980' ? 'selected' : ''} </option>
					<option value="1981">1981 ${bYear == '1981' ? 'selected' : ''} </option>
					<option value="1982">1982 ${bYear == '1982' ? 'selected' : ''} </option>
					<option value="1983">1983 ${bYear == '1983' ? 'selected' : ''} </option>	
					<option value="1984">1984 ${bYear == '1984' ? 'selected' : ''} </option>	
					<option value="1985">1985 ${bYear == '1985' ? 'selected' : ''} </option>	
					<option value="1986">1986 ${bYear == '1986' ? 'selected' : ''} </option>	
					<option value="1987">1987 ${bYear == '1987' ? 'selected' : ''} </option>	
					<option value="1988">1988 ${bYear == '1988' ? 'selected' : ''} </option>	
					<option value="1989">1989 ${bYear == '1989' ? 'selected' : ''} </option>	
					<option value="1990">1990 ${bYear == '1990' ? 'selected' : ''} </option>	
					<option value="1991">1991 ${bYear == '1991' ? 'selected' : ''} </option>	
					<option value="1992">1992 ${bYear == '1992' ? 'selected' : ''} </option>
					<option value="1993">1993 ${bYear == '1993' ? 'selected' : ''} </option>	
					<option value="1994">1994 ${bYear == '1994' ? 'selected' : ''} </option>	
					<option value="1995">1995 ${bYear == '1995' ? 'selected' : ''} </option>	
					<option value="1996">1996 ${bYear == '1996' ? 'selected' : ''} </option>	
					<option value="1997">1997 ${bYear == '1997' ? 'selected' : ''} </option>	
					<option value="1998">1998 ${bYear == '1998' ? 'selected' : ''} </option>	
					<option value="1999">1999 ${bYear == '1999' ? 'selected' : ''} </option>	
					<option value="2000">2000 ${bYear == '2000' ? 'selected' : ''} </option>	
					<option value="2001">2001 ${bYear == '2001' ? 'selected' : ''} </option>	
					<option value="2002">2002 ${bYear == '2002' ? 'selected' : ''} </option>	
					<option value="2003">2003 ${bYear == '2003' ? 'selected' : ''} </option>	
					<option value="2004">2004 ${bYear == '2004' ? 'selected' : ''} </option>	
					<option value="2005">2005 ${bYear == '2005' ? 'selected' : ''} </option>	
					<option value="2006">2006 ${bYear == '2006' ? 'selected' : ''} </option>	
					<option value="2007">2007 ${bYear == '2007' ? 'selected' : ''} </option>	
					<option value="2008">2008 ${bYear == '2008' ? 'selected' : ''} </option>	
					<option value="2009">2009 ${bYear == '2009' ? 'selected' : ''} </option>	
					<option value="2010">2010 ${bYear == '2010' ? 'selected' : ''} </option>	
					<option value="2011">2011 ${bYear == '2011' ? 'selected' : ''} </option>	
					<option value="2012">2012 ${bYear == '2012' ? 'selected' : ''} </option>	
					<option value="2013">2013 ${bYear == '2013' ? 'selected' : ''} </option>			
			</select>
			
			<label>Hire Date</label>
			<select name="month_of_hiring" class="cjComboBox">
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
			
			<select name="day_of_hiring" class="cjComboBox">
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
			
			<select name="year_of_hiring" class="cjComboBox">
				    <option value=""></option>
					<option value="1945">1945 ${bYear == '1945' ? 'selected' : ''} </option>
					<option value="1946">1946 ${bYear == '1946' ? 'selected' : ''} </option>
					<option value="1947">1947 ${bYear == '1947' ? 'selected' : ''} </option>
					<option value="1948">1948 ${bYear == '1948' ? 'selected' : ''} </option>
					<option value="1949">1949 ${bYear == '1949' ? 'selected' : ''} </option>
					<option value="1950">1950 ${bYear == '1950' ? 'selected' : ''} </option>
					<option value="1951">1951 ${bYear == '1951' ? 'selected' : ''} </option>
					<option value="1952">1952 ${bYear == '1952' ? 'selected' : ''} </option>
					<option value="1953">1953 ${bYear == '1953' ? 'selected' : ''} </option>
					<option value="1954">1954 ${bYear == '1954' ? 'selected' : ''} </option>
					<option value="1955">1955 ${bYear == '1955' ? 'selected' : ''} </option>
					<option value="1956">1956 ${bYear == '1956' ? 'selected' : ''} </option>
					<option value="1957">1957 ${bYear == '1957' ? 'selected' : ''} </option>
					<option value="1958">1958 ${bYear == '1958' ? 'selected' : ''} </option>
					<option value="1959">1959 ${bYear == '1959' ? 'selected' : ''} </option>
					<option value="1960">1960 ${bYear == '1960' ? 'selected' : ''} </option>
					<option value="1961">1961 ${bYear == '1961' ? 'selected' : ''} </option>
					<option value="1962">1962 ${bYear == '1962' ? 'selected' : ''} </option>
					<option value="1963">1963 ${bYear == '1963' ? 'selected' : ''} </option>
					<option value="1964">1964 ${bYear == '1964' ? 'selected' : ''} </option>
					<option value="1965">1965 ${bYear == '1965' ? 'selected' : ''} </option>
					<option value="1966">1966 ${bYear == '1966' ? 'selected' : ''} </option>
					<option value="1967">1967 ${bYear == '1967' ? 'selected' : ''} </option>
					<option value="1968">1968 ${bYear == '1968' ? 'selected' : ''} </option>
					<option value="1969">1969 ${bYear == '1969' ? 'selected' : ''} </option>
					<option value="1970">1970 ${bYear == '1970' ? 'selected' : ''} </option>
					<option value="1971">1971 ${bYear == '1971' ? 'selected' : ''} </option>
					<option value="1972">1972 ${bYear == '1972' ? 'selected' : ''} </option>
					<option value="1973">1973 ${bYear == '1973' ? 'selected' : ''} </option>
					<option value="1974">1974 ${bYear == '1974' ? 'selected' : ''} </option>
					<option value="1975">1975 ${bYear == '1975' ? 'selected' : ''} </option>
					<option value="1976">1976 ${bYear == '1976' ? 'selected' : ''} </option>
					<option value="1977">1977 ${bYear == '1977' ? 'selected' : ''} </option>
					<option value="1978">1978 ${bYear == '1978' ? 'selected' : ''} </option>
					<option value="1979">1979 ${bYear == '1979' ? 'selected' : ''} </option>
					<option value="1980">1980 ${bYear == '1980' ? 'selected' : ''} </option>
					<option value="1981">1981 ${bYear == '1981' ? 'selected' : ''} </option>
					<option value="1982">1982 ${bYear == '1982' ? 'selected' : ''} </option>
					<option value="1983">1983 ${bYear == '1983' ? 'selected' : ''} </option>	
					<option value="1984">1984 ${bYear == '1984' ? 'selected' : ''} </option>	
					<option value="1985">1985 ${bYear == '1985' ? 'selected' : ''} </option>	
					<option value="1986">1986 ${bYear == '1986' ? 'selected' : ''} </option>	
					<option value="1987">1987 ${bYear == '1987' ? 'selected' : ''} </option>	
					<option value="1988">1988 ${bYear == '1988' ? 'selected' : ''} </option>	
					<option value="1989">1989 ${bYear == '1989' ? 'selected' : ''} </option>	
					<option value="1990">1990 ${bYear == '1990' ? 'selected' : ''} </option>	
					<option value="1991">1991 ${bYear == '1991' ? 'selected' : ''} </option>	
					<option value="1992">1992 ${bYear == '1992' ? 'selected' : ''} </option>
					<option value="1993">1993 ${bYear == '1993' ? 'selected' : ''} </option>	
					<option value="1994">1994 ${bYear == '1994' ? 'selected' : ''} </option>	
					<option value="1995">1995 ${bYear == '1995' ? 'selected' : ''} </option>	
					<option value="1996">1996 ${bYear == '1996' ? 'selected' : ''} </option>	
					<option value="1997">1997 ${bYear == '1997' ? 'selected' : ''} </option>	
					<option value="1998">1998 ${bYear == '1998' ? 'selected' : ''} </option>	
					<option value="1999">1999 ${bYear == '1999' ? 'selected' : ''} </option>	
					<option value="2000">2000 ${bYear == '2000' ? 'selected' : ''} </option>	
					<option value="2001">2001 ${bYear == '2001' ? 'selected' : ''} </option>	
					<option value="2002">2002 ${bYear == '2002' ? 'selected' : ''} </option>	
					<option value="2003">2003 ${bYear == '2003' ? 'selected' : ''} </option>	
					<option value="2004">2004 ${bYear == '2004' ? 'selected' : ''} </option>	
					<option value="2005">2005 ${bYear == '2005' ? 'selected' : ''} </option>	
					<option value="2006">2006 ${bYear == '2006' ? 'selected' : ''} </option>	
					<option value="2007">2007 ${bYear == '2007' ? 'selected' : ''} </option>	
					<option value="2008">2008 ${bYear == '2008' ? 'selected' : ''} </option>	
					<option value="2009">2009 ${bYear == '2009' ? 'selected' : ''} </option>	
					<option value="2010">2010 ${bYear == '2010' ? 'selected' : ''} </option>	
					<option value="2011">2011 ${bYear == '2011' ? 'selected' : ''} </option>	
					<option value="2012">2012 ${bYear == '2012' ? 'selected' : ''} </option>	
					<option value="2013">2013 ${bYear == '2013' ? 'selected' : ''} </option>			
			</select>
			
			
				
			<label>Email Id</label>
			<input type="text"  tabindex="2" value = "${employee.emailId}" required name="emailId">
			<c:if test ='<%=role.equalsIgnoreCase("Employee") %>'>
				<label>Password</label>
				<input type="password"  tabindex="2" value = "${employee.password}" required name="password">
			</c:if>	
	
			</fieldset>
		</table>
</form>


</body>
</html>