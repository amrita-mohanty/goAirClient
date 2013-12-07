<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleAdminServicesProxyid" scope="session" class="goair.wsdl.AdminServicesProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleAdminServicesProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleAdminServicesProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleAdminServicesProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        goair.wsdl.AdminServices getAdminServices10mtemp = sampleAdminServicesProxyid.getAdminServices();
if(getAdminServices10mtemp == null){
%>
<%=getAdminServices10mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
</TABLE>
<%
}
break;
case 21:
        gotMethod = true;
        %>
        <jsp:useBean id="goair1util1SearchParametersForCustomers_1id" scope="session" class="goair.util.SearchParametersForCustomers" />
        <%
        goair.model.customer.Customer[] searchCustomersForAdmin21mtemp = sampleAdminServicesProxyid.searchCustomersForAdmin(goair1util1SearchParametersForCustomers_1id);
if(searchCustomersForAdmin21mtemp == null){
%>
<%=searchCustomersForAdmin21mtemp %>
<%
}else{
        String tempreturnp22 = null;
        if(searchCustomersForAdmin21mtemp != null){
        java.util.List listreturnp22= java.util.Arrays.asList(searchCustomersForAdmin21mtemp);
        tempreturnp22 = listreturnp22.toString();
        }
        %>
        <%=tempreturnp22%>
        <%
}
break;
case 26:
        gotMethod = true;
        goair.model.customer.Customer[] getAllCustomersForAdmin26mtemp = sampleAdminServicesProxyid.getAllCustomersForAdmin();
if(getAllCustomersForAdmin26mtemp == null){
%>
<%=getAllCustomersForAdmin26mtemp %>
<%
}else{
        String tempreturnp27 = null;
        if(getAllCustomersForAdmin26mtemp != null){
        java.util.List listreturnp27= java.util.Arrays.asList(getAllCustomersForAdmin26mtemp);
        tempreturnp27 = listreturnp27.toString();
        }
        %>
        <%=tempreturnp27%>
        <%
}
break;
case 29:
        gotMethod = true;
        %>
        <jsp:useBean id="goair1util1SearchParametersForEmployees_2id" scope="session" class="goair.util.SearchParametersForEmployees" />
        <%
        goair.model.employee.Employee[] searchEmployeesForAdmin29mtemp = sampleAdminServicesProxyid.searchEmployeesForAdmin(goair1util1SearchParametersForEmployees_2id);
if(searchEmployeesForAdmin29mtemp == null){
%>
<%=searchEmployeesForAdmin29mtemp %>
<%
}else{
        String tempreturnp30 = null;
        if(searchEmployeesForAdmin29mtemp != null){
        java.util.List listreturnp30= java.util.Arrays.asList(searchEmployeesForAdmin29mtemp);
        tempreturnp30 = listreturnp30.toString();
        }
        %>
        <%=tempreturnp30%>
        <%
}
break;
case 34:
        gotMethod = true;
        goair.model.employee.Employee[] getAllEmployeesForAdmin34mtemp = sampleAdminServicesProxyid.getAllEmployeesForAdmin();
if(getAllEmployeesForAdmin34mtemp == null){
%>
<%=getAllEmployeesForAdmin34mtemp %>
<%
}else{
        String tempreturnp35 = null;
        if(getAllEmployeesForAdmin34mtemp != null){
        java.util.List listreturnp35= java.util.Arrays.asList(getAllEmployeesForAdmin34mtemp);
        tempreturnp35 = listreturnp35.toString();
        }
        %>
        <%=tempreturnp35%>
        <%
}
break;
case 37:
        gotMethod = true;
        String flightId_4id=  request.getParameter("flightId42");
        int flightId_4idTemp  = Integer.parseInt(flightId_4id);
        String dateOfFlying_5id=  request.getParameter("dateOfFlying44");
            java.util.Calendar dateOfFlying_5idTemp = null;
        if(!dateOfFlying_5id.equals("")){
        java.text.DateFormat dateFormatdateOfFlying44 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempdateOfFlying44  = dateFormatdateOfFlying44.parse(dateOfFlying_5id);
         dateOfFlying_5idTemp = new java.util.GregorianCalendar();
        dateOfFlying_5idTemp.setTime(dateTempdateOfFlying44);
        }
        String customerId_6id=  request.getParameter("customerId46");
        int customerId_6idTemp  = Integer.parseInt(customerId_6id);
        String pnr_7id=  request.getParameter("pnr48");
        long pnr_7idTemp  = Long.parseLong(pnr_7id);
        %>
        <jsp:useBean id="goair1util1SearchParametersForReservation_3id" scope="session" class="goair.util.SearchParametersForReservation" />
        <%
        goair1util1SearchParametersForReservation_3id.setFlightId(flightId_4idTemp);
        goair1util1SearchParametersForReservation_3id.setDateOfFlying(dateOfFlying_5idTemp);
        goair1util1SearchParametersForReservation_3id.setCustomerId(customerId_6idTemp);
        goair1util1SearchParametersForReservation_3id.setPnr(pnr_7idTemp);
        goair.model.reservation.Reservation[] searchReservationsForAdmin37mtemp = sampleAdminServicesProxyid.searchReservationsForAdmin(goair1util1SearchParametersForReservation_3id);
if(searchReservationsForAdmin37mtemp == null){
%>
<%=searchReservationsForAdmin37mtemp %>
<%
}else{
        String tempreturnp38 = null;
        if(searchReservationsForAdmin37mtemp != null){
        java.util.List listreturnp38= java.util.Arrays.asList(searchReservationsForAdmin37mtemp);
        tempreturnp38 = listreturnp38.toString();
        }
        %>
        <%=tempreturnp38%>
        <%
}
break;
case 50:
        gotMethod = true;
        goair.model.reservation.Reservation[] getAllReservationsForAdmin50mtemp = sampleAdminServicesProxyid.getAllReservationsForAdmin();
if(getAllReservationsForAdmin50mtemp == null){
%>
<%=getAllReservationsForAdmin50mtemp %>
<%
}else{
        String tempreturnp51 = null;
        if(getAllReservationsForAdmin50mtemp != null){
        java.util.List listreturnp51= java.util.Arrays.asList(getAllReservationsForAdmin50mtemp);
        tempreturnp51 = listreturnp51.toString();
        }
        %>
        <%=tempreturnp51%>
        <%
}
break;
case 53:
        gotMethod = true;
        String source_9id=  request.getParameter("source58");
            java.lang.String source_9idTemp = null;
        if(!source_9id.equals("")){
         source_9idTemp  = source_9id;
        }
        String customerLastName_10id=  request.getParameter("customerLastName60");
            java.lang.String customerLastName_10idTemp = null;
        if(!customerLastName_10id.equals("")){
         customerLastName_10idTemp  = customerLastName_10id;
        }
        String pnr_11id=  request.getParameter("pnr62");
        long pnr_11idTemp  = Long.parseLong(pnr_11id);
        String dateOfFlying_12id=  request.getParameter("dateOfFlying64");
            java.util.Calendar dateOfFlying_12idTemp = null;
        if(!dateOfFlying_12id.equals("")){
        java.text.DateFormat dateFormatdateOfFlying64 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempdateOfFlying64  = dateFormatdateOfFlying64.parse(dateOfFlying_12id);
         dateOfFlying_12idTemp = new java.util.GregorianCalendar();
        dateOfFlying_12idTemp.setTime(dateTempdateOfFlying64);
        }
        String dateOfBooking_13id=  request.getParameter("dateOfBooking66");
            java.util.Calendar dateOfBooking_13idTemp = null;
        if(!dateOfBooking_13id.equals("")){
        java.text.DateFormat dateFormatdateOfBooking66 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempdateOfBooking66  = dateFormatdateOfBooking66.parse(dateOfBooking_13id);
         dateOfBooking_13idTemp = new java.util.GregorianCalendar();
        dateOfBooking_13idTemp.setTime(dateTempdateOfBooking66);
        }
        String customerFirstName_14id=  request.getParameter("customerFirstName68");
            java.lang.String customerFirstName_14idTemp = null;
        if(!customerFirstName_14id.equals("")){
         customerFirstName_14idTemp  = customerFirstName_14id;
        }
        String destination_15id=  request.getParameter("destination70");
            java.lang.String destination_15idTemp = null;
        if(!destination_15id.equals("")){
         destination_15idTemp  = destination_15id;
        }
        String flightName_16id=  request.getParameter("flightName72");
            java.lang.String flightName_16idTemp = null;
        if(!flightName_16id.equals("")){
         flightName_16idTemp  = flightName_16id;
        }
        String flightId_17id=  request.getParameter("flightId74");
        int flightId_17idTemp  = Integer.parseInt(flightId_17id);
        String totalPrice_18id=  request.getParameter("totalPrice76");
        double totalPrice_18idTemp  = Double.parseDouble(totalPrice_18id);
        String numberOfSeatsBooked_19id=  request.getParameter("numberOfSeatsBooked78");
        int numberOfSeatsBooked_19idTemp  = Integer.parseInt(numberOfSeatsBooked_19id);
        String departureTime_20id=  request.getParameter("departureTime80");
            java.util.Calendar departureTime_20idTemp = null;
        if(!departureTime_20id.equals("")){
        java.text.DateFormat dateFormatdepartureTime80 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempdepartureTime80  = dateFormatdepartureTime80.parse(departureTime_20id);
         departureTime_20idTemp = new java.util.GregorianCalendar();
        departureTime_20idTemp.setTime(dateTempdepartureTime80);
        }
        String customerId_21id=  request.getParameter("customerId82");
        int customerId_21idTemp  = Integer.parseInt(customerId_21id);
        String creditCardNumber_22id=  request.getParameter("creditCardNumber84");
        long creditCardNumber_22idTemp  = Long.parseLong(creditCardNumber_22id);
        String airlineName_23id=  request.getParameter("airlineName86");
            java.lang.String airlineName_23idTemp = null;
        if(!airlineName_23id.equals("")){
         airlineName_23idTemp  = airlineName_23id;
        }
        String currentStatus_24id=  request.getParameter("currentStatus88");
            java.lang.String currentStatus_24idTemp = null;
        if(!currentStatus_24id.equals("")){
         currentStatus_24idTemp  = currentStatus_24id;
        }
        %>
        <jsp:useBean id="goair1model1reservation1Reservation_8id" scope="session" class="goair.model.reservation.Reservation" />
        <%
        goair1model1reservation1Reservation_8id.setSource(source_9idTemp);
        goair1model1reservation1Reservation_8id.setCustomerLastName(customerLastName_10idTemp);
        goair1model1reservation1Reservation_8id.setPnr(pnr_11idTemp);
        goair1model1reservation1Reservation_8id.setDateOfFlying(dateOfFlying_12idTemp);
        goair1model1reservation1Reservation_8id.setDateOfBooking(dateOfBooking_13idTemp);
        goair1model1reservation1Reservation_8id.setCustomerFirstName(customerFirstName_14idTemp);
        goair1model1reservation1Reservation_8id.setDestination(destination_15idTemp);
        goair1model1reservation1Reservation_8id.setFlightName(flightName_16idTemp);
        goair1model1reservation1Reservation_8id.setFlightId(flightId_17idTemp);
        goair1model1reservation1Reservation_8id.setTotalPrice(totalPrice_18idTemp);
        goair1model1reservation1Reservation_8id.setNumberOfSeatsBooked(numberOfSeatsBooked_19idTemp);
        goair1model1reservation1Reservation_8id.setDepartureTime(departureTime_20idTemp);
        goair1model1reservation1Reservation_8id.setCustomerId(customerId_21idTemp);
        goair1model1reservation1Reservation_8id.setCreditCardNumber(creditCardNumber_22idTemp);
        goair1model1reservation1Reservation_8id.setAirlineName(airlineName_23idTemp);
        goair1model1reservation1Reservation_8id.setCurrentStatus(currentStatus_24idTemp);
        int cancelReservation53mtemp = sampleAdminServicesProxyid.cancelReservation(goair1model1reservation1Reservation_8id);
        String tempResultreturnp54 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(cancelReservation53mtemp));
        %>
        <%= tempResultreturnp54 %>
        <%
break;
case 90:
        gotMethod = true;
        String source_26id=  request.getParameter("source95");
            java.lang.String source_26idTemp = null;
        if(!source_26id.equals("")){
         source_26idTemp  = source_26id;
        }
        String customerLastName_27id=  request.getParameter("customerLastName97");
            java.lang.String customerLastName_27idTemp = null;
        if(!customerLastName_27id.equals("")){
         customerLastName_27idTemp  = customerLastName_27id;
        }
        String pnr_28id=  request.getParameter("pnr99");
        long pnr_28idTemp  = Long.parseLong(pnr_28id);
        String dateOfFlying_29id=  request.getParameter("dateOfFlying101");
            java.util.Calendar dateOfFlying_29idTemp = null;
        if(!dateOfFlying_29id.equals("")){
        java.text.DateFormat dateFormatdateOfFlying101 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempdateOfFlying101  = dateFormatdateOfFlying101.parse(dateOfFlying_29id);
         dateOfFlying_29idTemp = new java.util.GregorianCalendar();
        dateOfFlying_29idTemp.setTime(dateTempdateOfFlying101);
        }
        String dateOfBooking_30id=  request.getParameter("dateOfBooking103");
            java.util.Calendar dateOfBooking_30idTemp = null;
        if(!dateOfBooking_30id.equals("")){
        java.text.DateFormat dateFormatdateOfBooking103 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempdateOfBooking103  = dateFormatdateOfBooking103.parse(dateOfBooking_30id);
         dateOfBooking_30idTemp = new java.util.GregorianCalendar();
        dateOfBooking_30idTemp.setTime(dateTempdateOfBooking103);
        }
        String customerFirstName_31id=  request.getParameter("customerFirstName105");
            java.lang.String customerFirstName_31idTemp = null;
        if(!customerFirstName_31id.equals("")){
         customerFirstName_31idTemp  = customerFirstName_31id;
        }
        String destination_32id=  request.getParameter("destination107");
            java.lang.String destination_32idTemp = null;
        if(!destination_32id.equals("")){
         destination_32idTemp  = destination_32id;
        }
        String flightName_33id=  request.getParameter("flightName109");
            java.lang.String flightName_33idTemp = null;
        if(!flightName_33id.equals("")){
         flightName_33idTemp  = flightName_33id;
        }
        String flightId_34id=  request.getParameter("flightId111");
        int flightId_34idTemp  = Integer.parseInt(flightId_34id);
        String totalPrice_35id=  request.getParameter("totalPrice113");
        double totalPrice_35idTemp  = Double.parseDouble(totalPrice_35id);
        String numberOfSeatsBooked_36id=  request.getParameter("numberOfSeatsBooked115");
        int numberOfSeatsBooked_36idTemp  = Integer.parseInt(numberOfSeatsBooked_36id);
        String departureTime_37id=  request.getParameter("departureTime117");
            java.util.Calendar departureTime_37idTemp = null;
        if(!departureTime_37id.equals("")){
        java.text.DateFormat dateFormatdepartureTime117 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempdepartureTime117  = dateFormatdepartureTime117.parse(departureTime_37id);
         departureTime_37idTemp = new java.util.GregorianCalendar();
        departureTime_37idTemp.setTime(dateTempdepartureTime117);
        }
        String customerId_38id=  request.getParameter("customerId119");
        int customerId_38idTemp  = Integer.parseInt(customerId_38id);
        String creditCardNumber_39id=  request.getParameter("creditCardNumber121");
        long creditCardNumber_39idTemp  = Long.parseLong(creditCardNumber_39id);
        String airlineName_40id=  request.getParameter("airlineName123");
            java.lang.String airlineName_40idTemp = null;
        if(!airlineName_40id.equals("")){
         airlineName_40idTemp  = airlineName_40id;
        }
        String currentStatus_41id=  request.getParameter("currentStatus125");
            java.lang.String currentStatus_41idTemp = null;
        if(!currentStatus_41id.equals("")){
         currentStatus_41idTemp  = currentStatus_41id;
        }
        %>
        <jsp:useBean id="goair1model1reservation1Reservation_25id" scope="session" class="goair.model.reservation.Reservation" />
        <%
        goair1model1reservation1Reservation_25id.setSource(source_26idTemp);
        goair1model1reservation1Reservation_25id.setCustomerLastName(customerLastName_27idTemp);
        goair1model1reservation1Reservation_25id.setPnr(pnr_28idTemp);
        goair1model1reservation1Reservation_25id.setDateOfFlying(dateOfFlying_29idTemp);
        goair1model1reservation1Reservation_25id.setDateOfBooking(dateOfBooking_30idTemp);
        goair1model1reservation1Reservation_25id.setCustomerFirstName(customerFirstName_31idTemp);
        goair1model1reservation1Reservation_25id.setDestination(destination_32idTemp);
        goair1model1reservation1Reservation_25id.setFlightName(flightName_33idTemp);
        goair1model1reservation1Reservation_25id.setFlightId(flightId_34idTemp);
        goair1model1reservation1Reservation_25id.setTotalPrice(totalPrice_35idTemp);
        goair1model1reservation1Reservation_25id.setNumberOfSeatsBooked(numberOfSeatsBooked_36idTemp);
        goair1model1reservation1Reservation_25id.setDepartureTime(departureTime_37idTemp);
        goair1model1reservation1Reservation_25id.setCustomerId(customerId_38idTemp);
        goair1model1reservation1Reservation_25id.setCreditCardNumber(creditCardNumber_39idTemp);
        goair1model1reservation1Reservation_25id.setAirlineName(airlineName_40idTemp);
        goair1model1reservation1Reservation_25id.setCurrentStatus(currentStatus_41idTemp);
        int editReservation90mtemp = sampleAdminServicesProxyid.editReservation(goair1model1reservation1Reservation_25id);
        String tempResultreturnp91 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(editReservation90mtemp));
        %>
        <%= tempResultreturnp91 %>
        <%
break;
case 127:
        gotMethod = true;
        String source_43id=  request.getParameter("source132");
            java.lang.String source_43idTemp = null;
        if(!source_43id.equals("")){
         source_43idTemp  = source_43id;
        }
        String customerLastName_44id=  request.getParameter("customerLastName134");
            java.lang.String customerLastName_44idTemp = null;
        if(!customerLastName_44id.equals("")){
         customerLastName_44idTemp  = customerLastName_44id;
        }
        String pnr_45id=  request.getParameter("pnr136");
        long pnr_45idTemp  = Long.parseLong(pnr_45id);
        String dateOfFlying_46id=  request.getParameter("dateOfFlying138");
            java.util.Calendar dateOfFlying_46idTemp = null;
        if(!dateOfFlying_46id.equals("")){
        java.text.DateFormat dateFormatdateOfFlying138 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempdateOfFlying138  = dateFormatdateOfFlying138.parse(dateOfFlying_46id);
         dateOfFlying_46idTemp = new java.util.GregorianCalendar();
        dateOfFlying_46idTemp.setTime(dateTempdateOfFlying138);
        }
        String dateOfBooking_47id=  request.getParameter("dateOfBooking140");
            java.util.Calendar dateOfBooking_47idTemp = null;
        if(!dateOfBooking_47id.equals("")){
        java.text.DateFormat dateFormatdateOfBooking140 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempdateOfBooking140  = dateFormatdateOfBooking140.parse(dateOfBooking_47id);
         dateOfBooking_47idTemp = new java.util.GregorianCalendar();
        dateOfBooking_47idTemp.setTime(dateTempdateOfBooking140);
        }
        String customerFirstName_48id=  request.getParameter("customerFirstName142");
            java.lang.String customerFirstName_48idTemp = null;
        if(!customerFirstName_48id.equals("")){
         customerFirstName_48idTemp  = customerFirstName_48id;
        }
        String destination_49id=  request.getParameter("destination144");
            java.lang.String destination_49idTemp = null;
        if(!destination_49id.equals("")){
         destination_49idTemp  = destination_49id;
        }
        String flightName_50id=  request.getParameter("flightName146");
            java.lang.String flightName_50idTemp = null;
        if(!flightName_50id.equals("")){
         flightName_50idTemp  = flightName_50id;
        }
        String flightId_51id=  request.getParameter("flightId148");
        int flightId_51idTemp  = Integer.parseInt(flightId_51id);
        String totalPrice_52id=  request.getParameter("totalPrice150");
        double totalPrice_52idTemp  = Double.parseDouble(totalPrice_52id);
        String numberOfSeatsBooked_53id=  request.getParameter("numberOfSeatsBooked152");
        int numberOfSeatsBooked_53idTemp  = Integer.parseInt(numberOfSeatsBooked_53id);
        String departureTime_54id=  request.getParameter("departureTime154");
            java.util.Calendar departureTime_54idTemp = null;
        if(!departureTime_54id.equals("")){
        java.text.DateFormat dateFormatdepartureTime154 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempdepartureTime154  = dateFormatdepartureTime154.parse(departureTime_54id);
         departureTime_54idTemp = new java.util.GregorianCalendar();
        departureTime_54idTemp.setTime(dateTempdepartureTime154);
        }
        String customerId_55id=  request.getParameter("customerId156");
        int customerId_55idTemp  = Integer.parseInt(customerId_55id);
        String creditCardNumber_56id=  request.getParameter("creditCardNumber158");
        long creditCardNumber_56idTemp  = Long.parseLong(creditCardNumber_56id);
        String airlineName_57id=  request.getParameter("airlineName160");
            java.lang.String airlineName_57idTemp = null;
        if(!airlineName_57id.equals("")){
         airlineName_57idTemp  = airlineName_57id;
        }
        String currentStatus_58id=  request.getParameter("currentStatus162");
            java.lang.String currentStatus_58idTemp = null;
        if(!currentStatus_58id.equals("")){
         currentStatus_58idTemp  = currentStatus_58id;
        }
        %>
        <jsp:useBean id="goair1model1reservation1Reservation_42id" scope="session" class="goair.model.reservation.Reservation" />
        <%
        goair1model1reservation1Reservation_42id.setSource(source_43idTemp);
        goair1model1reservation1Reservation_42id.setCustomerLastName(customerLastName_44idTemp);
        goair1model1reservation1Reservation_42id.setPnr(pnr_45idTemp);
        goair1model1reservation1Reservation_42id.setDateOfFlying(dateOfFlying_46idTemp);
        goair1model1reservation1Reservation_42id.setDateOfBooking(dateOfBooking_47idTemp);
        goair1model1reservation1Reservation_42id.setCustomerFirstName(customerFirstName_48idTemp);
        goair1model1reservation1Reservation_42id.setDestination(destination_49idTemp);
        goair1model1reservation1Reservation_42id.setFlightName(flightName_50idTemp);
        goair1model1reservation1Reservation_42id.setFlightId(flightId_51idTemp);
        goair1model1reservation1Reservation_42id.setTotalPrice(totalPrice_52idTemp);
        goair1model1reservation1Reservation_42id.setNumberOfSeatsBooked(numberOfSeatsBooked_53idTemp);
        goair1model1reservation1Reservation_42id.setDepartureTime(departureTime_54idTemp);
        goair1model1reservation1Reservation_42id.setCustomerId(customerId_55idTemp);
        goair1model1reservation1Reservation_42id.setCreditCardNumber(creditCardNumber_56idTemp);
        goair1model1reservation1Reservation_42id.setAirlineName(airlineName_57idTemp);
        goair1model1reservation1Reservation_42id.setCurrentStatus(currentStatus_58idTemp);
        int addReservation127mtemp = sampleAdminServicesProxyid.addReservation(goair1model1reservation1Reservation_42id);
        String tempResultreturnp128 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addReservation127mtemp));
        %>
        <%= tempResultreturnp128 %>
        <%
break;
case 164:
        gotMethod = true;
        String position_60id=  request.getParameter("position169");
            java.lang.String position_60idTemp = null;
        if(!position_60id.equals("")){
         position_60idTemp  = position_60id;
        }
        String jobDesc_61id=  request.getParameter("jobDesc171");
            java.lang.String jobDesc_61idTemp = null;
        if(!jobDesc_61id.equals("")){
         jobDesc_61idTemp  = jobDesc_61id;
        }
        String hireDate_62id=  request.getParameter("hireDate173");
            java.util.Calendar hireDate_62idTemp = null;
        if(!hireDate_62id.equals("")){
        java.text.DateFormat dateFormathireDate173 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemphireDate173  = dateFormathireDate173.parse(hireDate_62id);
         hireDate_62idTemp = new java.util.GregorianCalendar();
        hireDate_62idTemp.setTime(dateTemphireDate173);
        }
        String airlineName_63id=  request.getParameter("airlineName175");
            java.lang.String airlineName_63idTemp = null;
        if(!airlineName_63id.equals("")){
         airlineName_63idTemp  = airlineName_63id;
        }
        String employeeId_64id=  request.getParameter("employeeId177");
            java.lang.Integer employeeId_64idTemp = null;
        if(!employeeId_64id.equals("")){
         employeeId_64idTemp  = java.lang.Integer.valueOf(employeeId_64id);
        }
        %>
        <jsp:useBean id="goair1model1employee1Employee_59id" scope="session" class="goair.model.employee.Employee" />
        <%
        goair1model1employee1Employee_59id.setPosition(position_60idTemp);
        goair1model1employee1Employee_59id.setJobDesc(jobDesc_61idTemp);
        goair1model1employee1Employee_59id.setHireDate(hireDate_62idTemp);
        goair1model1employee1Employee_59id.setAirlineName(airlineName_63idTemp);
        goair1model1employee1Employee_59id.setEmployeeId(employeeId_64idTemp);
        int deleteEmployee164mtemp = sampleAdminServicesProxyid.deleteEmployee(goair1model1employee1Employee_59id);
        String tempResultreturnp165 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteEmployee164mtemp));
        %>
        <%= tempResultreturnp165 %>
        <%
break;
case 179:
        gotMethod = true;
        String flightName_66id=  request.getParameter("flightName184");
            java.lang.String flightName_66idTemp = null;
        if(!flightName_66id.equals("")){
         flightName_66idTemp  = flightName_66id;
        }
        String arrivalTime_67id=  request.getParameter("arrivalTime186");
            java.util.Calendar arrivalTime_67idTemp = null;
        if(!arrivalTime_67id.equals("")){
        java.text.DateFormat dateFormatarrivalTime186 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparrivalTime186  = dateFormatarrivalTime186.parse(arrivalTime_67id);
         arrivalTime_67idTemp = new java.util.GregorianCalendar();
        arrivalTime_67idTemp.setTime(dateTemparrivalTime186);
        }
        String seatsReserved_68id=  request.getParameter("seatsReserved188");
        int seatsReserved_68idTemp  = Integer.parseInt(seatsReserved_68id);
        String totalSeats_69id=  request.getParameter("totalSeats190");
        int totalSeats_69idTemp  = Integer.parseInt(totalSeats_69id);
        String airlineName_70id=  request.getParameter("airlineName192");
            java.lang.String airlineName_70idTemp = null;
        if(!airlineName_70id.equals("")){
         airlineName_70idTemp  = airlineName_70id;
        }
        String flightId_71id=  request.getParameter("flightId194");
            java.lang.Integer flightId_71idTemp = null;
        if(!flightId_71id.equals("")){
         flightId_71idTemp  = java.lang.Integer.valueOf(flightId_71id);
        }
        String seatsAvailable_72id=  request.getParameter("seatsAvailable196");
        int seatsAvailable_72idTemp  = Integer.parseInt(seatsAvailable_72id);
        String flightStatus_73id=  request.getParameter("flightStatus198");
            java.lang.String flightStatus_73idTemp = null;
        if(!flightStatus_73id.equals("")){
         flightStatus_73idTemp  = flightStatus_73id;
        }
        String ticketPrice_74id=  request.getParameter("ticketPrice200");
            java.lang.Double ticketPrice_74idTemp = null;
        if(!ticketPrice_74id.equals("")){
         ticketPrice_74idTemp  = java.lang.Double.valueOf(ticketPrice_74id);
        }
        String daysOfWeek_75id=  request.getParameter("daysOfWeek202");
            java.lang.String daysOfWeek_75idTemp = null;
        if(!daysOfWeek_75id.equals("")){
         daysOfWeek_75idTemp  = daysOfWeek_75id;
        }
        String flyingDate_76id=  request.getParameter("flyingDate204");
            java.util.Calendar flyingDate_76idTemp = null;
        if(!flyingDate_76id.equals("")){
        java.text.DateFormat dateFormatflyingDate204 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempflyingDate204  = dateFormatflyingDate204.parse(flyingDate_76id);
         flyingDate_76idTemp = new java.util.GregorianCalendar();
        flyingDate_76idTemp.setTime(dateTempflyingDate204);
        }
        String source_77id=  request.getParameter("source206");
            java.lang.String source_77idTemp = null;
        if(!source_77id.equals("")){
         source_77idTemp  = source_77id;
        }
        String destination_78id=  request.getParameter("destination208");
            java.lang.String destination_78idTemp = null;
        if(!destination_78id.equals("")){
         destination_78idTemp  = destination_78id;
        }
        String flyingStartDate_79id=  request.getParameter("flyingStartDate210");
            java.util.Calendar flyingStartDate_79idTemp = null;
        if(!flyingStartDate_79id.equals("")){
        java.text.DateFormat dateFormatflyingStartDate210 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempflyingStartDate210  = dateFormatflyingStartDate210.parse(flyingStartDate_79id);
         flyingStartDate_79idTemp = new java.util.GregorianCalendar();
        flyingStartDate_79idTemp.setTime(dateTempflyingStartDate210);
        }
        String currentStatus_80id=  request.getParameter("currentStatus212");
            java.lang.String currentStatus_80idTemp = null;
        if(!currentStatus_80id.equals("")){
         currentStatus_80idTemp  = currentStatus_80id;
        }
        String departureTime_81id=  request.getParameter("departureTime214");
            java.util.Calendar departureTime_81idTemp = null;
        if(!departureTime_81id.equals("")){
        java.text.DateFormat dateFormatdepartureTime214 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempdepartureTime214  = dateFormatdepartureTime214.parse(departureTime_81id);
         departureTime_81idTemp = new java.util.GregorianCalendar();
        departureTime_81idTemp.setTime(dateTempdepartureTime214);
        }
        String flyingEndDate_82id=  request.getParameter("flyingEndDate216");
            java.util.Calendar flyingEndDate_82idTemp = null;
        if(!flyingEndDate_82id.equals("")){
        java.text.DateFormat dateFormatflyingEndDate216 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempflyingEndDate216  = dateFormatflyingEndDate216.parse(flyingEndDate_82id);
         flyingEndDate_82idTemp = new java.util.GregorianCalendar();
        flyingEndDate_82idTemp.setTime(dateTempflyingEndDate216);
        }
        %>
        <jsp:useBean id="goair1model1flight1Flight_65id" scope="session" class="goair.model.flight.Flight" />
        <%
        goair1model1flight1Flight_65id.setFlightName(flightName_66idTemp);
        goair1model1flight1Flight_65id.setArrivalTime(arrivalTime_67idTemp);
        goair1model1flight1Flight_65id.setSeatsReserved(seatsReserved_68idTemp);
        goair1model1flight1Flight_65id.setTotalSeats(totalSeats_69idTemp);
        goair1model1flight1Flight_65id.setAirlineName(airlineName_70idTemp);
        goair1model1flight1Flight_65id.setFlightId(flightId_71idTemp);
        goair1model1flight1Flight_65id.setSeatsAvailable(seatsAvailable_72idTemp);
        goair1model1flight1Flight_65id.setFlightStatus(flightStatus_73idTemp);
        goair1model1flight1Flight_65id.setTicketPrice(ticketPrice_74idTemp);
        goair1model1flight1Flight_65id.setDaysOfWeek(daysOfWeek_75idTemp);
        goair1model1flight1Flight_65id.setFlyingDate(flyingDate_76idTemp);
        goair1model1flight1Flight_65id.setSource(source_77idTemp);
        goair1model1flight1Flight_65id.setDestination(destination_78idTemp);
        goair1model1flight1Flight_65id.setFlyingStartDate(flyingStartDate_79idTemp);
        goair1model1flight1Flight_65id.setCurrentStatus(currentStatus_80idTemp);
        goair1model1flight1Flight_65id.setDepartureTime(departureTime_81idTemp);
        goair1model1flight1Flight_65id.setFlyingEndDate(flyingEndDate_82idTemp);
        int deleteFlight179mtemp = sampleAdminServicesProxyid.deleteFlight(goair1model1flight1Flight_65id);
        String tempResultreturnp180 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteFlight179mtemp));
        %>
        <%= tempResultreturnp180 %>
        <%
break;
case 218:
        gotMethod = true;
        String position_84id=  request.getParameter("position223");
            java.lang.String position_84idTemp = null;
        if(!position_84id.equals("")){
         position_84idTemp  = position_84id;
        }
        String jobDesc_85id=  request.getParameter("jobDesc225");
            java.lang.String jobDesc_85idTemp = null;
        if(!jobDesc_85id.equals("")){
         jobDesc_85idTemp  = jobDesc_85id;
        }
        String hireDate_86id=  request.getParameter("hireDate227");
            java.util.Calendar hireDate_86idTemp = null;
        if(!hireDate_86id.equals("")){
        java.text.DateFormat dateFormathireDate227 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemphireDate227  = dateFormathireDate227.parse(hireDate_86id);
         hireDate_86idTemp = new java.util.GregorianCalendar();
        hireDate_86idTemp.setTime(dateTemphireDate227);
        }
        String airlineName_87id=  request.getParameter("airlineName229");
            java.lang.String airlineName_87idTemp = null;
        if(!airlineName_87id.equals("")){
         airlineName_87idTemp  = airlineName_87id;
        }
        String employeeId_88id=  request.getParameter("employeeId231");
            java.lang.Integer employeeId_88idTemp = null;
        if(!employeeId_88id.equals("")){
         employeeId_88idTemp  = java.lang.Integer.valueOf(employeeId_88id);
        }
        %>
        <jsp:useBean id="goair1model1employee1Employee_83id" scope="session" class="goair.model.employee.Employee" />
        <%
        goair1model1employee1Employee_83id.setPosition(position_84idTemp);
        goair1model1employee1Employee_83id.setJobDesc(jobDesc_85idTemp);
        goair1model1employee1Employee_83id.setHireDate(hireDate_86idTemp);
        goair1model1employee1Employee_83id.setAirlineName(airlineName_87idTemp);
        goair1model1employee1Employee_83id.setEmployeeId(employeeId_88idTemp);
        int editEmployee218mtemp = sampleAdminServicesProxyid.editEmployee(goair1model1employee1Employee_83id);
        String tempResultreturnp219 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(editEmployee218mtemp));
        %>
        <%= tempResultreturnp219 %>
        <%
break;
case 233:
        gotMethod = true;
        String position_90id=  request.getParameter("position238");
            java.lang.String position_90idTemp = null;
        if(!position_90id.equals("")){
         position_90idTemp  = position_90id;
        }
        String jobDesc_91id=  request.getParameter("jobDesc240");
            java.lang.String jobDesc_91idTemp = null;
        if(!jobDesc_91id.equals("")){
         jobDesc_91idTemp  = jobDesc_91id;
        }
        String hireDate_92id=  request.getParameter("hireDate242");
            java.util.Calendar hireDate_92idTemp = null;
        if(!hireDate_92id.equals("")){
        java.text.DateFormat dateFormathireDate242 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemphireDate242  = dateFormathireDate242.parse(hireDate_92id);
         hireDate_92idTemp = new java.util.GregorianCalendar();
        hireDate_92idTemp.setTime(dateTemphireDate242);
        }
        String airlineName_93id=  request.getParameter("airlineName244");
            java.lang.String airlineName_93idTemp = null;
        if(!airlineName_93id.equals("")){
         airlineName_93idTemp  = airlineName_93id;
        }
        String employeeId_94id=  request.getParameter("employeeId246");
            java.lang.Integer employeeId_94idTemp = null;
        if(!employeeId_94id.equals("")){
         employeeId_94idTemp  = java.lang.Integer.valueOf(employeeId_94id);
        }
        %>
        <jsp:useBean id="goair1model1employee1Employee_89id" scope="session" class="goair.model.employee.Employee" />
        <%
        goair1model1employee1Employee_89id.setPosition(position_90idTemp);
        goair1model1employee1Employee_89id.setJobDesc(jobDesc_91idTemp);
        goair1model1employee1Employee_89id.setHireDate(hireDate_92idTemp);
        goair1model1employee1Employee_89id.setAirlineName(airlineName_93idTemp);
        goair1model1employee1Employee_89id.setEmployeeId(employeeId_94idTemp);
        int addEmployee233mtemp = sampleAdminServicesProxyid.addEmployee(goair1model1employee1Employee_89id);
        String tempResultreturnp234 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addEmployee233mtemp));
        %>
        <%= tempResultreturnp234 %>
        <%
break;
case 248:
        gotMethod = true;
        String passportNum_96id=  request.getParameter("passportNum253");
            java.lang.String passportNum_96idTemp = null;
        if(!passportNum_96id.equals("")){
         passportNum_96idTemp  = passportNum_96id;
        }
        String customerId_97id=  request.getParameter("customerId255");
        int customerId_97idTemp  = Integer.parseInt(customerId_97id);
        String nationality_98id=  request.getParameter("nationality257");
            java.lang.String nationality_98idTemp = null;
        if(!nationality_98id.equals("")){
         nationality_98idTemp  = nationality_98id;
        }
        %>
        <jsp:useBean id="goair1model1customer1Customer_95id" scope="session" class="goair.model.customer.Customer" />
        <%
        goair1model1customer1Customer_95id.setPassportNum(passportNum_96idTemp);
        goair1model1customer1Customer_95id.setCustomerId(customerId_97idTemp);
        goair1model1customer1Customer_95id.setNationality(nationality_98idTemp);
        int deleteCustomer248mtemp = sampleAdminServicesProxyid.deleteCustomer(goair1model1customer1Customer_95id);
        String tempResultreturnp249 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteCustomer248mtemp));
        %>
        <%= tempResultreturnp249 %>
        <%
break;
case 259:
        gotMethod = true;
        String passportNum_100id=  request.getParameter("passportNum264");
            java.lang.String passportNum_100idTemp = null;
        if(!passportNum_100id.equals("")){
         passportNum_100idTemp  = passportNum_100id;
        }
        String customerId_101id=  request.getParameter("customerId266");
        int customerId_101idTemp  = Integer.parseInt(customerId_101id);
        String nationality_102id=  request.getParameter("nationality268");
            java.lang.String nationality_102idTemp = null;
        if(!nationality_102id.equals("")){
         nationality_102idTemp  = nationality_102id;
        }
        %>
        <jsp:useBean id="goair1model1customer1Customer_99id" scope="session" class="goair.model.customer.Customer" />
        <%
        goair1model1customer1Customer_99id.setPassportNum(passportNum_100idTemp);
        goair1model1customer1Customer_99id.setCustomerId(customerId_101idTemp);
        goair1model1customer1Customer_99id.setNationality(nationality_102idTemp);
        int editCustomer259mtemp = sampleAdminServicesProxyid.editCustomer(goair1model1customer1Customer_99id);
        String tempResultreturnp260 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(editCustomer259mtemp));
        %>
        <%= tempResultreturnp260 %>
        <%
break;
case 270:
        gotMethod = true;
        String source_104id=  request.getParameter("source275");
            java.lang.String source_104idTemp = null;
        if(!source_104id.equals("")){
         source_104idTemp  = source_104id;
        }
        String dateOfFlying_105id=  request.getParameter("dateOfFlying277");
            java.util.Calendar dateOfFlying_105idTemp = null;
        if(!dateOfFlying_105id.equals("")){
        java.text.DateFormat dateFormatdateOfFlying277 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempdateOfFlying277  = dateFormatdateOfFlying277.parse(dateOfFlying_105id);
         dateOfFlying_105idTemp = new java.util.GregorianCalendar();
        dateOfFlying_105idTemp.setTime(dateTempdateOfFlying277);
        }
        String flightNumber_106id=  request.getParameter("flightNumber279");
            java.lang.String flightNumber_106idTemp = null;
        if(!flightNumber_106id.equals("")){
         flightNumber_106idTemp  = flightNumber_106id;
        }
        String employeeId_107id=  request.getParameter("employeeId281");
        int employeeId_107idTemp  = Integer.parseInt(employeeId_107id);
        String destination_108id=  request.getParameter("destination283");
            java.lang.String destination_108idTemp = null;
        if(!destination_108id.equals("")){
         destination_108idTemp  = destination_108id;
        }
        String arrivalTime_109id=  request.getParameter("arrivalTime285");
            java.util.Calendar arrivalTime_109idTemp = null;
        if(!arrivalTime_109id.equals("")){
        java.text.DateFormat dateFormatarrivalTime285 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparrivalTime285  = dateFormatarrivalTime285.parse(arrivalTime_109id);
         arrivalTime_109idTemp = new java.util.GregorianCalendar();
        arrivalTime_109idTemp.setTime(dateTemparrivalTime285);
        }
        String departureTime_110id=  request.getParameter("departureTime287");
            java.util.Calendar departureTime_110idTemp = null;
        if(!departureTime_110id.equals("")){
        java.text.DateFormat dateFormatdepartureTime287 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempdepartureTime287  = dateFormatdepartureTime287.parse(departureTime_110id);
         departureTime_110idTemp = new java.util.GregorianCalendar();
        departureTime_110idTemp.setTime(dateTempdepartureTime287);
        }
        String numberOfSeatsAvialable_111id=  request.getParameter("numberOfSeatsAvialable289");
        int numberOfSeatsAvialable_111idTemp  = Integer.parseInt(numberOfSeatsAvialable_111id);
        String airlineName_112id=  request.getParameter("airlineName291");
            java.lang.String airlineName_112idTemp = null;
        if(!airlineName_112id.equals("")){
         airlineName_112idTemp  = airlineName_112id;
        }
        %>
        <jsp:useBean id="goair1util1SearchParametersForFlights_103id" scope="session" class="goair.util.SearchParametersForFlights" />
        <%
        goair1util1SearchParametersForFlights_103id.setSource(source_104idTemp);
        goair1util1SearchParametersForFlights_103id.setDateOfFlying(dateOfFlying_105idTemp);
        goair1util1SearchParametersForFlights_103id.setFlightNumber(flightNumber_106idTemp);
        goair1util1SearchParametersForFlights_103id.setEmployeeId(employeeId_107idTemp);
        goair1util1SearchParametersForFlights_103id.setDestination(destination_108idTemp);
        goair1util1SearchParametersForFlights_103id.setArrivalTime(arrivalTime_109idTemp);
        goair1util1SearchParametersForFlights_103id.setDepartureTime(departureTime_110idTemp);
        goair1util1SearchParametersForFlights_103id.setNumberOfSeatsAvialable(numberOfSeatsAvialable_111idTemp);
        goair1util1SearchParametersForFlights_103id.setAirlineName(airlineName_112idTemp);
        goair.model.flight.Flight[] searchFlightsForAdmin270mtemp = sampleAdminServicesProxyid.searchFlightsForAdmin(goair1util1SearchParametersForFlights_103id);
if(searchFlightsForAdmin270mtemp == null){
%>
<%=searchFlightsForAdmin270mtemp %>
<%
}else{
        String tempreturnp271 = null;
        if(searchFlightsForAdmin270mtemp != null){
        java.util.List listreturnp271= java.util.Arrays.asList(searchFlightsForAdmin270mtemp);
        tempreturnp271 = listreturnp271.toString();
        }
        %>
        <%=tempreturnp271%>
        <%
}
break;
case 293:
        gotMethod = true;
        String passportNum_114id=  request.getParameter("passportNum298");
            java.lang.String passportNum_114idTemp = null;
        if(!passportNum_114id.equals("")){
         passportNum_114idTemp  = passportNum_114id;
        }
        String customerId_115id=  request.getParameter("customerId300");
        int customerId_115idTemp  = Integer.parseInt(customerId_115id);
        String nationality_116id=  request.getParameter("nationality302");
            java.lang.String nationality_116idTemp = null;
        if(!nationality_116id.equals("")){
         nationality_116idTemp  = nationality_116id;
        }
        %>
        <jsp:useBean id="goair1model1customer1Customer_113id" scope="session" class="goair.model.customer.Customer" />
        <%
        goair1model1customer1Customer_113id.setPassportNum(passportNum_114idTemp);
        goair1model1customer1Customer_113id.setCustomerId(customerId_115idTemp);
        goair1model1customer1Customer_113id.setNationality(nationality_116idTemp);
        int addCustomer293mtemp = sampleAdminServicesProxyid.addCustomer(goair1model1customer1Customer_113id);
        String tempResultreturnp294 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addCustomer293mtemp));
        %>
        <%= tempResultreturnp294 %>
        <%
break;
case 304:
        gotMethod = true;
        String flightName_118id=  request.getParameter("flightName309");
            java.lang.String flightName_118idTemp = null;
        if(!flightName_118id.equals("")){
         flightName_118idTemp  = flightName_118id;
        }
        String arrivalTime_119id=  request.getParameter("arrivalTime311");
            java.util.Calendar arrivalTime_119idTemp = null;
        if(!arrivalTime_119id.equals("")){
        java.text.DateFormat dateFormatarrivalTime311 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparrivalTime311  = dateFormatarrivalTime311.parse(arrivalTime_119id);
         arrivalTime_119idTemp = new java.util.GregorianCalendar();
        arrivalTime_119idTemp.setTime(dateTemparrivalTime311);
        }
        String seatsReserved_120id=  request.getParameter("seatsReserved313");
        int seatsReserved_120idTemp  = Integer.parseInt(seatsReserved_120id);
        String totalSeats_121id=  request.getParameter("totalSeats315");
        int totalSeats_121idTemp  = Integer.parseInt(totalSeats_121id);
        String airlineName_122id=  request.getParameter("airlineName317");
            java.lang.String airlineName_122idTemp = null;
        if(!airlineName_122id.equals("")){
         airlineName_122idTemp  = airlineName_122id;
        }
        String flightId_123id=  request.getParameter("flightId319");
            java.lang.Integer flightId_123idTemp = null;
        if(!flightId_123id.equals("")){
         flightId_123idTemp  = java.lang.Integer.valueOf(flightId_123id);
        }
        String seatsAvailable_124id=  request.getParameter("seatsAvailable321");
        int seatsAvailable_124idTemp  = Integer.parseInt(seatsAvailable_124id);
        String flightStatus_125id=  request.getParameter("flightStatus323");
            java.lang.String flightStatus_125idTemp = null;
        if(!flightStatus_125id.equals("")){
         flightStatus_125idTemp  = flightStatus_125id;
        }
        String ticketPrice_126id=  request.getParameter("ticketPrice325");
            java.lang.Double ticketPrice_126idTemp = null;
        if(!ticketPrice_126id.equals("")){
         ticketPrice_126idTemp  = java.lang.Double.valueOf(ticketPrice_126id);
        }
        String daysOfWeek_127id=  request.getParameter("daysOfWeek327");
            java.lang.String daysOfWeek_127idTemp = null;
        if(!daysOfWeek_127id.equals("")){
         daysOfWeek_127idTemp  = daysOfWeek_127id;
        }
        String flyingDate_128id=  request.getParameter("flyingDate329");
            java.util.Calendar flyingDate_128idTemp = null;
        if(!flyingDate_128id.equals("")){
        java.text.DateFormat dateFormatflyingDate329 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempflyingDate329  = dateFormatflyingDate329.parse(flyingDate_128id);
         flyingDate_128idTemp = new java.util.GregorianCalendar();
        flyingDate_128idTemp.setTime(dateTempflyingDate329);
        }
        String source_129id=  request.getParameter("source331");
            java.lang.String source_129idTemp = null;
        if(!source_129id.equals("")){
         source_129idTemp  = source_129id;
        }
        String destination_130id=  request.getParameter("destination333");
            java.lang.String destination_130idTemp = null;
        if(!destination_130id.equals("")){
         destination_130idTemp  = destination_130id;
        }
        String flyingStartDate_131id=  request.getParameter("flyingStartDate335");
            java.util.Calendar flyingStartDate_131idTemp = null;
        if(!flyingStartDate_131id.equals("")){
        java.text.DateFormat dateFormatflyingStartDate335 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempflyingStartDate335  = dateFormatflyingStartDate335.parse(flyingStartDate_131id);
         flyingStartDate_131idTemp = new java.util.GregorianCalendar();
        flyingStartDate_131idTemp.setTime(dateTempflyingStartDate335);
        }
        String currentStatus_132id=  request.getParameter("currentStatus337");
            java.lang.String currentStatus_132idTemp = null;
        if(!currentStatus_132id.equals("")){
         currentStatus_132idTemp  = currentStatus_132id;
        }
        String departureTime_133id=  request.getParameter("departureTime339");
            java.util.Calendar departureTime_133idTemp = null;
        if(!departureTime_133id.equals("")){
        java.text.DateFormat dateFormatdepartureTime339 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempdepartureTime339  = dateFormatdepartureTime339.parse(departureTime_133id);
         departureTime_133idTemp = new java.util.GregorianCalendar();
        departureTime_133idTemp.setTime(dateTempdepartureTime339);
        }
        String flyingEndDate_134id=  request.getParameter("flyingEndDate341");
            java.util.Calendar flyingEndDate_134idTemp = null;
        if(!flyingEndDate_134id.equals("")){
        java.text.DateFormat dateFormatflyingEndDate341 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempflyingEndDate341  = dateFormatflyingEndDate341.parse(flyingEndDate_134id);
         flyingEndDate_134idTemp = new java.util.GregorianCalendar();
        flyingEndDate_134idTemp.setTime(dateTempflyingEndDate341);
        }
        %>
        <jsp:useBean id="goair1model1flight1Flight_117id" scope="session" class="goair.model.flight.Flight" />
        <%
        goair1model1flight1Flight_117id.setFlightName(flightName_118idTemp);
        goair1model1flight1Flight_117id.setArrivalTime(arrivalTime_119idTemp);
        goair1model1flight1Flight_117id.setSeatsReserved(seatsReserved_120idTemp);
        goair1model1flight1Flight_117id.setTotalSeats(totalSeats_121idTemp);
        goair1model1flight1Flight_117id.setAirlineName(airlineName_122idTemp);
        goair1model1flight1Flight_117id.setFlightId(flightId_123idTemp);
        goair1model1flight1Flight_117id.setSeatsAvailable(seatsAvailable_124idTemp);
        goair1model1flight1Flight_117id.setFlightStatus(flightStatus_125idTemp);
        goair1model1flight1Flight_117id.setTicketPrice(ticketPrice_126idTemp);
        goair1model1flight1Flight_117id.setDaysOfWeek(daysOfWeek_127idTemp);
        goair1model1flight1Flight_117id.setFlyingDate(flyingDate_128idTemp);
        goair1model1flight1Flight_117id.setSource(source_129idTemp);
        goair1model1flight1Flight_117id.setDestination(destination_130idTemp);
        goair1model1flight1Flight_117id.setFlyingStartDate(flyingStartDate_131idTemp);
        goair1model1flight1Flight_117id.setCurrentStatus(currentStatus_132idTemp);
        goair1model1flight1Flight_117id.setDepartureTime(departureTime_133idTemp);
        goair1model1flight1Flight_117id.setFlyingEndDate(flyingEndDate_134idTemp);
        int editFlight304mtemp = sampleAdminServicesProxyid.editFlight(goair1model1flight1Flight_117id);
        String tempResultreturnp305 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(editFlight304mtemp));
        %>
        <%= tempResultreturnp305 %>
        <%
break;
case 343:
        gotMethod = true;
        String flightName_136id=  request.getParameter("flightName348");
            java.lang.String flightName_136idTemp = null;
        if(!flightName_136id.equals("")){
         flightName_136idTemp  = flightName_136id;
        }
        String arrivalTime_137id=  request.getParameter("arrivalTime350");
            java.util.Calendar arrivalTime_137idTemp = null;
        if(!arrivalTime_137id.equals("")){
        java.text.DateFormat dateFormatarrivalTime350 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparrivalTime350  = dateFormatarrivalTime350.parse(arrivalTime_137id);
         arrivalTime_137idTemp = new java.util.GregorianCalendar();
        arrivalTime_137idTemp.setTime(dateTemparrivalTime350);
        }
        String seatsReserved_138id=  request.getParameter("seatsReserved352");
        int seatsReserved_138idTemp  = Integer.parseInt(seatsReserved_138id);
        String totalSeats_139id=  request.getParameter("totalSeats354");
        int totalSeats_139idTemp  = Integer.parseInt(totalSeats_139id);
        String airlineName_140id=  request.getParameter("airlineName356");
            java.lang.String airlineName_140idTemp = null;
        if(!airlineName_140id.equals("")){
         airlineName_140idTemp  = airlineName_140id;
        }
        String flightId_141id=  request.getParameter("flightId358");
            java.lang.Integer flightId_141idTemp = null;
        if(!flightId_141id.equals("")){
         flightId_141idTemp  = java.lang.Integer.valueOf(flightId_141id);
        }
        String seatsAvailable_142id=  request.getParameter("seatsAvailable360");
        int seatsAvailable_142idTemp  = Integer.parseInt(seatsAvailable_142id);
        String flightStatus_143id=  request.getParameter("flightStatus362");
            java.lang.String flightStatus_143idTemp = null;
        if(!flightStatus_143id.equals("")){
         flightStatus_143idTemp  = flightStatus_143id;
        }
        String ticketPrice_144id=  request.getParameter("ticketPrice364");
            java.lang.Double ticketPrice_144idTemp = null;
        if(!ticketPrice_144id.equals("")){
         ticketPrice_144idTemp  = java.lang.Double.valueOf(ticketPrice_144id);
        }
        String daysOfWeek_145id=  request.getParameter("daysOfWeek366");
            java.lang.String daysOfWeek_145idTemp = null;
        if(!daysOfWeek_145id.equals("")){
         daysOfWeek_145idTemp  = daysOfWeek_145id;
        }
        String flyingDate_146id=  request.getParameter("flyingDate368");
            java.util.Calendar flyingDate_146idTemp = null;
        if(!flyingDate_146id.equals("")){
        java.text.DateFormat dateFormatflyingDate368 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempflyingDate368  = dateFormatflyingDate368.parse(flyingDate_146id);
         flyingDate_146idTemp = new java.util.GregorianCalendar();
        flyingDate_146idTemp.setTime(dateTempflyingDate368);
        }
        String source_147id=  request.getParameter("source370");
            java.lang.String source_147idTemp = null;
        if(!source_147id.equals("")){
         source_147idTemp  = source_147id;
        }
        String destination_148id=  request.getParameter("destination372");
            java.lang.String destination_148idTemp = null;
        if(!destination_148id.equals("")){
         destination_148idTemp  = destination_148id;
        }
        String flyingStartDate_149id=  request.getParameter("flyingStartDate374");
            java.util.Calendar flyingStartDate_149idTemp = null;
        if(!flyingStartDate_149id.equals("")){
        java.text.DateFormat dateFormatflyingStartDate374 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempflyingStartDate374  = dateFormatflyingStartDate374.parse(flyingStartDate_149id);
         flyingStartDate_149idTemp = new java.util.GregorianCalendar();
        flyingStartDate_149idTemp.setTime(dateTempflyingStartDate374);
        }
        String currentStatus_150id=  request.getParameter("currentStatus376");
            java.lang.String currentStatus_150idTemp = null;
        if(!currentStatus_150id.equals("")){
         currentStatus_150idTemp  = currentStatus_150id;
        }
        String departureTime_151id=  request.getParameter("departureTime378");
            java.util.Calendar departureTime_151idTemp = null;
        if(!departureTime_151id.equals("")){
        java.text.DateFormat dateFormatdepartureTime378 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempdepartureTime378  = dateFormatdepartureTime378.parse(departureTime_151id);
         departureTime_151idTemp = new java.util.GregorianCalendar();
        departureTime_151idTemp.setTime(dateTempdepartureTime378);
        }
        String flyingEndDate_152id=  request.getParameter("flyingEndDate380");
            java.util.Calendar flyingEndDate_152idTemp = null;
        if(!flyingEndDate_152id.equals("")){
        java.text.DateFormat dateFormatflyingEndDate380 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempflyingEndDate380  = dateFormatflyingEndDate380.parse(flyingEndDate_152id);
         flyingEndDate_152idTemp = new java.util.GregorianCalendar();
        flyingEndDate_152idTemp.setTime(dateTempflyingEndDate380);
        }
        %>
        <jsp:useBean id="goair1model1flight1Flight_135id" scope="session" class="goair.model.flight.Flight" />
        <%
        goair1model1flight1Flight_135id.setFlightName(flightName_136idTemp);
        goair1model1flight1Flight_135id.setArrivalTime(arrivalTime_137idTemp);
        goair1model1flight1Flight_135id.setSeatsReserved(seatsReserved_138idTemp);
        goair1model1flight1Flight_135id.setTotalSeats(totalSeats_139idTemp);
        goair1model1flight1Flight_135id.setAirlineName(airlineName_140idTemp);
        goair1model1flight1Flight_135id.setFlightId(flightId_141idTemp);
        goair1model1flight1Flight_135id.setSeatsAvailable(seatsAvailable_142idTemp);
        goair1model1flight1Flight_135id.setFlightStatus(flightStatus_143idTemp);
        goair1model1flight1Flight_135id.setTicketPrice(ticketPrice_144idTemp);
        goair1model1flight1Flight_135id.setDaysOfWeek(daysOfWeek_145idTemp);
        goair1model1flight1Flight_135id.setFlyingDate(flyingDate_146idTemp);
        goair1model1flight1Flight_135id.setSource(source_147idTemp);
        goair1model1flight1Flight_135id.setDestination(destination_148idTemp);
        goair1model1flight1Flight_135id.setFlyingStartDate(flyingStartDate_149idTemp);
        goair1model1flight1Flight_135id.setCurrentStatus(currentStatus_150idTemp);
        goair1model1flight1Flight_135id.setDepartureTime(departureTime_151idTemp);
        goair1model1flight1Flight_135id.setFlyingEndDate(flyingEndDate_152idTemp);
        int addFlight343mtemp = sampleAdminServicesProxyid.addFlight(goair1model1flight1Flight_135id);
        String tempResultreturnp344 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addFlight343mtemp));
        %>
        <%= tempResultreturnp344 %>
        <%
break;
case 382:
        gotMethod = true;
        goair.model.flight.Flight[] getAllFlightsForAdmin382mtemp = sampleAdminServicesProxyid.getAllFlightsForAdmin();
if(getAllFlightsForAdmin382mtemp == null){
%>
<%=getAllFlightsForAdmin382mtemp %>
<%
}else{
        String tempreturnp383 = null;
        if(getAllFlightsForAdmin382mtemp != null){
        java.util.List listreturnp383= java.util.Arrays.asList(getAllFlightsForAdmin382mtemp);
        tempreturnp383 = listreturnp383.toString();
        }
        %>
        <%=tempreturnp383%>
        <%
}
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>