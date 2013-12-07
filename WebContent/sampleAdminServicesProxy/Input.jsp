<%@page contentType="text/html;charset=UTF-8"%>
<HTML>
<HEAD>
<TITLE>Inputs</TITLE>
</HEAD>
<BODY>
<H1>Inputs</H1>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

boolean valid = true;

if(methodID != -1) methodID = Integer.parseInt(method);
switch (methodID){ 
case 2:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 5:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">endpoint:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="endpoint8" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 10:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 21:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">searchParameters:</TD>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 26:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 29:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">searchParameters:</TD>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 34:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 37:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">searchParameters:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">flightId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="flightId42" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">dateOfFlying:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="dateOfFlying44" SIZE=20></TD>
<%
java.text.DateFormat dateFormatdateOfFlying44 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampdateOfFlying44  = new java.util.GregorianCalendar();
java.util.Date datedateOfFlying44 = gcExampdateOfFlying44.getTime();
String tempResultdateOfFlying44 = dateFormatdateOfFlying44.format(datedateOfFlying44);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultdateOfFlying44 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">customerId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="customerId46" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">pnr:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="pnr48" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 50:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 53:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">reservation:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">source:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="source58" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">customerLastName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="customerLastName60" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">pnr:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="pnr62" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">dateOfFlying:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="dateOfFlying64" SIZE=20></TD>
<%
java.text.DateFormat dateFormatdateOfFlying64 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampdateOfFlying64  = new java.util.GregorianCalendar();
java.util.Date datedateOfFlying64 = gcExampdateOfFlying64.getTime();
String tempResultdateOfFlying64 = dateFormatdateOfFlying64.format(datedateOfFlying64);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultdateOfFlying64 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">dateOfBooking:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="dateOfBooking66" SIZE=20></TD>
<%
java.text.DateFormat dateFormatdateOfBooking66 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampdateOfBooking66  = new java.util.GregorianCalendar();
java.util.Date datedateOfBooking66 = gcExampdateOfBooking66.getTime();
String tempResultdateOfBooking66 = dateFormatdateOfBooking66.format(datedateOfBooking66);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultdateOfBooking66 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">customerFirstName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="customerFirstName68" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">destination:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="destination70" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">flightName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="flightName72" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">flightId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="flightId74" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">totalPrice:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="totalPrice76" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">numberOfSeatsBooked:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="numberOfSeatsBooked78" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">departureTime:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="departureTime80" SIZE=20></TD>
<%
java.text.DateFormat dateFormatdepartureTime80 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampdepartureTime80  = new java.util.GregorianCalendar();
java.util.Date datedepartureTime80 = gcExampdepartureTime80.getTime();
String tempResultdepartureTime80 = dateFormatdepartureTime80.format(datedepartureTime80);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultdepartureTime80 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">customerId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="customerId82" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creditCardNumber:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="creditCardNumber84" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">airlineName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="airlineName86" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currentStatus:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="currentStatus88" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 90:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">reservation:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">source:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="source95" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">customerLastName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="customerLastName97" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">pnr:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="pnr99" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">dateOfFlying:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="dateOfFlying101" SIZE=20></TD>
<%
java.text.DateFormat dateFormatdateOfFlying101 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampdateOfFlying101  = new java.util.GregorianCalendar();
java.util.Date datedateOfFlying101 = gcExampdateOfFlying101.getTime();
String tempResultdateOfFlying101 = dateFormatdateOfFlying101.format(datedateOfFlying101);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultdateOfFlying101 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">dateOfBooking:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="dateOfBooking103" SIZE=20></TD>
<%
java.text.DateFormat dateFormatdateOfBooking103 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampdateOfBooking103  = new java.util.GregorianCalendar();
java.util.Date datedateOfBooking103 = gcExampdateOfBooking103.getTime();
String tempResultdateOfBooking103 = dateFormatdateOfBooking103.format(datedateOfBooking103);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultdateOfBooking103 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">customerFirstName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="customerFirstName105" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">destination:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="destination107" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">flightName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="flightName109" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">flightId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="flightId111" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">totalPrice:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="totalPrice113" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">numberOfSeatsBooked:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="numberOfSeatsBooked115" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">departureTime:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="departureTime117" SIZE=20></TD>
<%
java.text.DateFormat dateFormatdepartureTime117 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampdepartureTime117  = new java.util.GregorianCalendar();
java.util.Date datedepartureTime117 = gcExampdepartureTime117.getTime();
String tempResultdepartureTime117 = dateFormatdepartureTime117.format(datedepartureTime117);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultdepartureTime117 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">customerId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="customerId119" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creditCardNumber:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="creditCardNumber121" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">airlineName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="airlineName123" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currentStatus:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="currentStatus125" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 127:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">reservation:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">source:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="source132" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">customerLastName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="customerLastName134" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">pnr:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="pnr136" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">dateOfFlying:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="dateOfFlying138" SIZE=20></TD>
<%
java.text.DateFormat dateFormatdateOfFlying138 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampdateOfFlying138  = new java.util.GregorianCalendar();
java.util.Date datedateOfFlying138 = gcExampdateOfFlying138.getTime();
String tempResultdateOfFlying138 = dateFormatdateOfFlying138.format(datedateOfFlying138);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultdateOfFlying138 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">dateOfBooking:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="dateOfBooking140" SIZE=20></TD>
<%
java.text.DateFormat dateFormatdateOfBooking140 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampdateOfBooking140  = new java.util.GregorianCalendar();
java.util.Date datedateOfBooking140 = gcExampdateOfBooking140.getTime();
String tempResultdateOfBooking140 = dateFormatdateOfBooking140.format(datedateOfBooking140);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultdateOfBooking140 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">customerFirstName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="customerFirstName142" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">destination:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="destination144" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">flightName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="flightName146" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">flightId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="flightId148" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">totalPrice:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="totalPrice150" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">numberOfSeatsBooked:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="numberOfSeatsBooked152" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">departureTime:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="departureTime154" SIZE=20></TD>
<%
java.text.DateFormat dateFormatdepartureTime154 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampdepartureTime154  = new java.util.GregorianCalendar();
java.util.Date datedepartureTime154 = gcExampdepartureTime154.getTime();
String tempResultdepartureTime154 = dateFormatdepartureTime154.format(datedepartureTime154);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultdepartureTime154 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">customerId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="customerId156" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creditCardNumber:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="creditCardNumber158" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">airlineName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="airlineName160" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currentStatus:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="currentStatus162" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 164:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">employee:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">position:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="position169" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">jobDesc:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="jobDesc171" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">hireDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="hireDate173" SIZE=20></TD>
<%
java.text.DateFormat dateFormathireDate173 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExamphireDate173  = new java.util.GregorianCalendar();
java.util.Date datehireDate173 = gcExamphireDate173.getTime();
String tempResulthireDate173 = dateFormathireDate173.format(datehireDate173);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResulthireDate173 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">airlineName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="airlineName175" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">employeeId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="employeeId177" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 179:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">flight:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">flightName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="flightName184" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">arrivalTime:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arrivalTime186" SIZE=20></TD>
<%
java.text.DateFormat dateFormatarrivalTime186 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExamparrivalTime186  = new java.util.GregorianCalendar();
java.util.Date datearrivalTime186 = gcExamparrivalTime186.getTime();
String tempResultarrivalTime186 = dateFormatarrivalTime186.format(datearrivalTime186);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultarrivalTime186 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">seatsReserved:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="seatsReserved188" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">totalSeats:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="totalSeats190" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">airlineName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="airlineName192" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">flightId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="flightId194" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">seatsAvailable:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="seatsAvailable196" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">flightStatus:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="flightStatus198" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">ticketPrice:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="ticketPrice200" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">daysOfWeek:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="daysOfWeek202" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">flyingDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="flyingDate204" SIZE=20></TD>
<%
java.text.DateFormat dateFormatflyingDate204 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampflyingDate204  = new java.util.GregorianCalendar();
java.util.Date dateflyingDate204 = gcExampflyingDate204.getTime();
String tempResultflyingDate204 = dateFormatflyingDate204.format(dateflyingDate204);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultflyingDate204 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">source:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="source206" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">destination:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="destination208" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">flyingStartDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="flyingStartDate210" SIZE=20></TD>
<%
java.text.DateFormat dateFormatflyingStartDate210 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampflyingStartDate210  = new java.util.GregorianCalendar();
java.util.Date dateflyingStartDate210 = gcExampflyingStartDate210.getTime();
String tempResultflyingStartDate210 = dateFormatflyingStartDate210.format(dateflyingStartDate210);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultflyingStartDate210 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currentStatus:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="currentStatus212" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">departureTime:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="departureTime214" SIZE=20></TD>
<%
java.text.DateFormat dateFormatdepartureTime214 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampdepartureTime214  = new java.util.GregorianCalendar();
java.util.Date datedepartureTime214 = gcExampdepartureTime214.getTime();
String tempResultdepartureTime214 = dateFormatdepartureTime214.format(datedepartureTime214);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultdepartureTime214 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">flyingEndDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="flyingEndDate216" SIZE=20></TD>
<%
java.text.DateFormat dateFormatflyingEndDate216 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampflyingEndDate216  = new java.util.GregorianCalendar();
java.util.Date dateflyingEndDate216 = gcExampflyingEndDate216.getTime();
String tempResultflyingEndDate216 = dateFormatflyingEndDate216.format(dateflyingEndDate216);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultflyingEndDate216 %> </TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 218:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">employee:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">position:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="position223" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">jobDesc:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="jobDesc225" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">hireDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="hireDate227" SIZE=20></TD>
<%
java.text.DateFormat dateFormathireDate227 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExamphireDate227  = new java.util.GregorianCalendar();
java.util.Date datehireDate227 = gcExamphireDate227.getTime();
String tempResulthireDate227 = dateFormathireDate227.format(datehireDate227);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResulthireDate227 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">airlineName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="airlineName229" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">employeeId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="employeeId231" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 233:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">employee:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">position:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="position238" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">jobDesc:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="jobDesc240" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">hireDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="hireDate242" SIZE=20></TD>
<%
java.text.DateFormat dateFormathireDate242 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExamphireDate242  = new java.util.GregorianCalendar();
java.util.Date datehireDate242 = gcExamphireDate242.getTime();
String tempResulthireDate242 = dateFormathireDate242.format(datehireDate242);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResulthireDate242 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">airlineName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="airlineName244" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">employeeId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="employeeId246" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 248:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">customer:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">passportNum:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="passportNum253" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">customerId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="customerId255" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nationality:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nationality257" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 259:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">customer:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">passportNum:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="passportNum264" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">customerId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="customerId266" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nationality:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nationality268" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 270:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">searchParameters:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">source:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="source275" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">dateOfFlying:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="dateOfFlying277" SIZE=20></TD>
<%
java.text.DateFormat dateFormatdateOfFlying277 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampdateOfFlying277  = new java.util.GregorianCalendar();
java.util.Date datedateOfFlying277 = gcExampdateOfFlying277.getTime();
String tempResultdateOfFlying277 = dateFormatdateOfFlying277.format(datedateOfFlying277);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultdateOfFlying277 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">flightNumber:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="flightNumber279" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">employeeId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="employeeId281" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">destination:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="destination283" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">arrivalTime:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arrivalTime285" SIZE=20></TD>
<%
java.text.DateFormat dateFormatarrivalTime285 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExamparrivalTime285  = new java.util.GregorianCalendar();
java.util.Date datearrivalTime285 = gcExamparrivalTime285.getTime();
String tempResultarrivalTime285 = dateFormatarrivalTime285.format(datearrivalTime285);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultarrivalTime285 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">departureTime:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="departureTime287" SIZE=20></TD>
<%
java.text.DateFormat dateFormatdepartureTime287 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampdepartureTime287  = new java.util.GregorianCalendar();
java.util.Date datedepartureTime287 = gcExampdepartureTime287.getTime();
String tempResultdepartureTime287 = dateFormatdepartureTime287.format(datedepartureTime287);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultdepartureTime287 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">numberOfSeatsAvialable:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="numberOfSeatsAvialable289" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">airlineName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="airlineName291" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 293:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">customer:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">passportNum:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="passportNum298" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">customerId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="customerId300" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nationality:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nationality302" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 304:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">flight:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">flightName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="flightName309" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">arrivalTime:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arrivalTime311" SIZE=20></TD>
<%
java.text.DateFormat dateFormatarrivalTime311 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExamparrivalTime311  = new java.util.GregorianCalendar();
java.util.Date datearrivalTime311 = gcExamparrivalTime311.getTime();
String tempResultarrivalTime311 = dateFormatarrivalTime311.format(datearrivalTime311);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultarrivalTime311 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">seatsReserved:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="seatsReserved313" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">totalSeats:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="totalSeats315" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">airlineName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="airlineName317" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">flightId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="flightId319" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">seatsAvailable:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="seatsAvailable321" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">flightStatus:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="flightStatus323" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">ticketPrice:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="ticketPrice325" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">daysOfWeek:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="daysOfWeek327" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">flyingDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="flyingDate329" SIZE=20></TD>
<%
java.text.DateFormat dateFormatflyingDate329 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampflyingDate329  = new java.util.GregorianCalendar();
java.util.Date dateflyingDate329 = gcExampflyingDate329.getTime();
String tempResultflyingDate329 = dateFormatflyingDate329.format(dateflyingDate329);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultflyingDate329 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">source:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="source331" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">destination:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="destination333" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">flyingStartDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="flyingStartDate335" SIZE=20></TD>
<%
java.text.DateFormat dateFormatflyingStartDate335 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampflyingStartDate335  = new java.util.GregorianCalendar();
java.util.Date dateflyingStartDate335 = gcExampflyingStartDate335.getTime();
String tempResultflyingStartDate335 = dateFormatflyingStartDate335.format(dateflyingStartDate335);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultflyingStartDate335 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currentStatus:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="currentStatus337" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">departureTime:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="departureTime339" SIZE=20></TD>
<%
java.text.DateFormat dateFormatdepartureTime339 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampdepartureTime339  = new java.util.GregorianCalendar();
java.util.Date datedepartureTime339 = gcExampdepartureTime339.getTime();
String tempResultdepartureTime339 = dateFormatdepartureTime339.format(datedepartureTime339);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultdepartureTime339 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">flyingEndDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="flyingEndDate341" SIZE=20></TD>
<%
java.text.DateFormat dateFormatflyingEndDate341 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampflyingEndDate341  = new java.util.GregorianCalendar();
java.util.Date dateflyingEndDate341 = gcExampflyingEndDate341.getTime();
String tempResultflyingEndDate341 = dateFormatflyingEndDate341.format(dateflyingEndDate341);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultflyingEndDate341 %> </TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 343:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">flight:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">flightName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="flightName348" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">arrivalTime:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arrivalTime350" SIZE=20></TD>
<%
java.text.DateFormat dateFormatarrivalTime350 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExamparrivalTime350  = new java.util.GregorianCalendar();
java.util.Date datearrivalTime350 = gcExamparrivalTime350.getTime();
String tempResultarrivalTime350 = dateFormatarrivalTime350.format(datearrivalTime350);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultarrivalTime350 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">seatsReserved:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="seatsReserved352" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">totalSeats:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="totalSeats354" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">airlineName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="airlineName356" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">flightId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="flightId358" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">seatsAvailable:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="seatsAvailable360" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">flightStatus:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="flightStatus362" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">ticketPrice:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="ticketPrice364" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">daysOfWeek:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="daysOfWeek366" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">flyingDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="flyingDate368" SIZE=20></TD>
<%
java.text.DateFormat dateFormatflyingDate368 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampflyingDate368  = new java.util.GregorianCalendar();
java.util.Date dateflyingDate368 = gcExampflyingDate368.getTime();
String tempResultflyingDate368 = dateFormatflyingDate368.format(dateflyingDate368);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultflyingDate368 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">source:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="source370" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">destination:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="destination372" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">flyingStartDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="flyingStartDate374" SIZE=20></TD>
<%
java.text.DateFormat dateFormatflyingStartDate374 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampflyingStartDate374  = new java.util.GregorianCalendar();
java.util.Date dateflyingStartDate374 = gcExampflyingStartDate374.getTime();
String tempResultflyingStartDate374 = dateFormatflyingStartDate374.format(dateflyingStartDate374);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultflyingStartDate374 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currentStatus:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="currentStatus376" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">departureTime:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="departureTime378" SIZE=20></TD>
<%
java.text.DateFormat dateFormatdepartureTime378 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampdepartureTime378  = new java.util.GregorianCalendar();
java.util.Date datedepartureTime378 = gcExampdepartureTime378.getTime();
String tempResultdepartureTime378 = dateFormatdepartureTime378.format(datedepartureTime378);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultdepartureTime378 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">flyingEndDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="flyingEndDate380" SIZE=20></TD>
<%
java.text.DateFormat dateFormatflyingEndDate380 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampflyingEndDate380  = new java.util.GregorianCalendar();
java.util.Date dateflyingEndDate380 = gcExampflyingEndDate380.getTime();
String tempResultflyingEndDate380 = dateFormatflyingEndDate380.format(dateflyingEndDate380);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultflyingEndDate380 %> </TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 382:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 1111111111:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">URLString:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="url1111111111" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 1111111112:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
}
if (valid) {
%>
Select a method to test.
<%
}
%>

</BODY>
</HTML>
