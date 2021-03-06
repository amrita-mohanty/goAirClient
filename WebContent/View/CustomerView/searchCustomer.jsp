<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<% String role = (String)session.getAttribute("role"); %>
<!DOCTYPE HTML>
<html>
<head>
<title>Search Customer</title>
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
<form class="box login" name="login" style="height: auto; top: 50%;" method="post" action="searchCustomer">
		<h3>
			<br> <label>Search a Customer!!</label>
			<br><label>Enter the Search Crieria </label>
		</h3>
<fieldset class="boxBody">
			<label>Customer SSN (XXX-XX-XXXX)</label> <input type="text" tabindex="1" name="customerId">	
			<label>First Name</label> <input type="text" tabindex="1" name="fname">	
			<label>Last Name</label> <input type="text" tabindex="1" name="lname">
			<label>Gender</label>	
					<select name="gender" class="cjComboBox">
		    		<option value="male">Male</option>
		    		<option value="female">Female</option>
		  			</select>
			
			<label>Address</label> <input type="text" tabindex="1" name="address">
			
			<label>City</label> <input type="text" tabindex="1" name="city">
			
			<label>State</label>
			<select name="state" class="cjComboBox" >
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
			
			
			
			<label>Zip Code</label> <input type="text" tabindex="1" name="zipcode">
			
			<label>Date of Birth</label>
			<select name="month" class="cjComboBox">
					<option value="">Month</option>
					<option value="Jan">January</option>
					<option value="Feb">Febraury</option>
					<option value="Mar">March</option>
					<option value="Apr">April</option>
					<option value="May">May</option>
					<option value="Jun">June</option>
					<option value="Jul">July</option>
					<option value="Aug">August</option>
					<option value="Sep">September</option>
					<option value="Oct">October</option>
					<option value="Nov">November</option>
					<option value="Dec">December</option>
			</select>
			
			<select name="day" class="cjComboBox">
					<option value="">Day</option>
					<option value="01">1</option>
					<option value="02">2</option>
					<option value="03">3</option>
					<option value="04">4</option>
					<option value="05">5</option>
					<option value="06">6</option>
					<option value="07">7</option>
					<option value="08">8</option>
					<option value="09">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
					<option value="21">21</option>
					<option value="22">22</option>
					<option value="23">23</option>
					<option value="24">24</option>
					<option value="25">25</option>
					<option value="26">26</option>
					<option value="27">27</option>
					<option value="28">28</option>
					<option value="29">29</option>
					<option value="30">30</option>
					<option value="31">31</option>
			</select>
			
			<select name="year" class="cjComboBox">
					<option value="">Year</option>
					<option value="1945">1945</option>
					<option value="1946">1946</option>
					<option value="1947">1947</option>
					<option value="1948">1948</option>
					<option value="1949">1949</option>
					<option value="1950">1950</option>
					<option value="1951">1951</option>
					<option value="1952">1952</option>
					<option value="1953">1953</option>
					<option value="1954">1954</option>
					<option value="1955">1955</option>
					<option value="1956">1956</option>
					<option value="1957">1957</option>
					<option value="1958">1958</option>
					<option value="1959">1959</option>
					<option value="1960">1960</option>
					<option value="1961">1961</option>
					<option value="1962">1962</option>
					<option value="1963">1963</option>
					<option value="1964">1964</option>
					<option value="1965">1965</option>
					<option value="1966">1966</option>
					<option value="1967">1967</option>
					<option value="1968">1968</option>
					<option value="1969">1969</option>
					<option value="1970">1970</option>
					<option value="1971">1971</option>
					<option value="1972">1972</option>
					<option value="1973">1973</option>
					<option value="1974">1974</option>
					<option value="1975">1975</option>
					<option value="1976">1976</option>
					<option value="1977">1977</option>
					<option value="1978">1978</option>
					<option value="1979">1979</option>
					<option value="1980">1980</option>
					<option value="1981">1981</option>
					<option value="1982">1982</option>	
					<option value="1982">1983</option>	
					<option value="1982">1984</option>
					<option value="1982">1985</option>
					<option value="1982">1986</option>
					<option value="1982">1987</option>
					<option value="1982">1988</option>
					<option value="1982">1989</option>
					<option value="1982">1990</option>
					<option value="1982">1991</option>
					<option value="1982">1992</option>
					<option value="1982">1993</option>
					<option value="1982">1994</option>
			</select>

			<label>Passport Number</label> <input type="text" tabindex="1" name="passNum">
			<label>Nationality</label> <input type="text" tabindex="1" name="nationality">
		
			<label>Email</label>
			<input type="text"  tabindex="2" name="email">
			
		</fieldset>
		
		<footer>
			
			<input type="submit" class="btnLogin" value="Search" tabindex="3">
			
		</footer>




</form>


</body>
</html>