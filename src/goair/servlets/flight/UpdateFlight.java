package goair.servlets.flight;

import goair.model.customer.Customer;
import goair.model.employee.Employee;
import goair.model.flight.Flight;
import goair.wsdl.AdminServicesProxy;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UpdateFlight
 */
public class UpdateFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateFlight() {
        super();
        // TODO Auto-generated constructor stub
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nextJSP = "";
		HttpSession session = request.getSession(true);
		AdminServicesProxy adminproxy = new AdminServicesProxy();
		adminproxy.setEndpoint("http://localhost:8080/goAir/services/AdminServices");
		
		String flightname = request.getParameter("flightName");
		String flightId1 = request.getParameter("flightId");
		String airlinename = request.getParameter("airlineName");
		String source = request.getParameter("source");
		String destination = request.getParameter("destination");
		String deptTime = request.getParameter("deptTime");
		String arrivalTime = request.getParameter("arrivalTime");
		String startDate = request.getParameter("startdatepick");
		String endDate = request.getParameter("enddatepick");
		String flighStatus = request.getParameter("flighstatus");
		String totalSeats = request.getParameter("totalseats");
		String seatavailable = request.getParameter("seatAvailable");
		String ticketPrice = request.getParameter("ticketprice");
		String dayOfWeek = request.getParameter("dayofweek");		
		System.out.println(airlinename);
		Calendar newStartDate = Calendar.getInstance();
	
		if(!startDate.equals(null)){
	
	SimpleDateFormat sdf = new SimpleDateFormat("mm/dd/yyyy");
	try {
	 newStartDate.setTime(sdf.parse(startDate));
	}
	
	catch (ParseException e) {
		e.printStackTrace();
	} 
		}
		Calendar newEndDate = Calendar.getInstance();
		if(!endDate.equals(null)){
	
	SimpleDateFormat sdf1 = new SimpleDateFormat("mm/dd/yyyy");
	try {
		newEndDate.setTime(sdf1.parse(endDate));
	}
	
	catch (ParseException e) {
		e.printStackTrace();
	}
		}
		Calendar newDeptTime= Calendar.getInstance();
		if(!deptTime.equals(null) && ! startDate.equals(null)){
	
	SimpleDateFormat sdf2 = new SimpleDateFormat("mm/dd/yyyyHH:mm:ss");
	try {
		newDeptTime.setTime(sdf2.parse(startDate+deptTime));
	}
	
	catch (ParseException e) {
		e.printStackTrace();
	}}
		Calendar newArrivalTime= Calendar.getInstance();
		if(!arrivalTime.equals(null) && ! startDate.equals(null)){
	
	
	SimpleDateFormat sdf3 = new SimpleDateFormat("mm/dd/yyyyHH:mm:ss");
	try {
		newArrivalTime.setTime(sdf3.parse(startDate+arrivalTime));
	}
	
	catch (ParseException e) {
		e.printStackTrace();
	}}
		
   Flight flight = new Flight();
   flight.setAirlineName(airlinename);
   flight.setArrivalTime(newArrivalTime);
   flight.setDaysOfWeek(dayOfWeek);
   flight.setDepartureTime(newDeptTime);
   flight.setDestination(destination);
   flight.setFlightId(Integer.parseInt(flightId1));
   flight.setFlightName(flightname);
   flight.setFlightStatus(flighStatus);
   flight.setFlyingDate(newStartDate);
   flight.setFlyingEndDate(newEndDate);
   flight.setFlyingStartDate(newStartDate);
   //flight.setSeatsReserved(Integer.parseInt(seatavailable));
   flight.setTotalSeats(Integer.parseInt(totalSeats));
   flight.setSource(source);
   flight.setDestination(destination); 

   PrintWriter out = response.getWriter();	
	session = request.getSession(false);
	String role = (String) session.getAttribute("role");
	
	int result = adminproxy.editFlight(flight);
	
	if(result!=-1){
		System.out.println("Updated Successfully");
			request.setAttribute("message",
					"Successfully updated flight to database.");
			nextJSP = "/View/FlightView/updateFlight.jsp";

		} else {
			request.setAttribute("message", "Unable to update flight!");
			nextJSP = "/View/FlightView/updateFlight.jsp";
		}
	
	RequestDispatcher dispatcher = getServletContext()
	.getRequestDispatcher(nextJSP);
dispatcher.forward(request, response);
		}
	
	}


