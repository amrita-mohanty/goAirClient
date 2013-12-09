package goair.servlets.flight;


import goair.model.flight.Flight;
import goair.wsdl.AdminServicesProxy;
import goair.wsdl.AdminServicesProxy;
import goair.wsdl.AirlineServicesProxy;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.DateFormat;
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
 * Servlet implementation class AddFlight
 */
public class AddFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddFlight() {
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
	 * @param flightId 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("in Add Flight servlet");
		if(null!=request.getParameter("addflight")){
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
		String flightStatus = request.getParameter("flightstatus");
		String totalSeats = request.getParameter("totalseats");
		String seatreserved = request.getParameter("seatreserved");
		String ticketPrice = request.getParameter("ticketprice");
		String dayOfWeek = request.getParameter("dayofweek");		
		System.out.println(airlinename);
	Calendar newStartDate = Calendar.getInstance();
	SimpleDateFormat sdf = new SimpleDateFormat("mm/dd/yyyy");
	try {
	 newStartDate.setTime(sdf.parse(startDate));
	}
	
	catch (ParseException e) {
		e.printStackTrace();
	} 

	
	Calendar newEndDate = Calendar.getInstance();
	SimpleDateFormat sdf1 = new SimpleDateFormat("mm/dd/yyyy");
	try {
		newEndDate.setTime(sdf1.parse(endDate));
	}
	
	catch (ParseException e) {
		e.printStackTrace();
	}
	
	
	Calendar newDeptTime= Calendar.getInstance();
	SimpleDateFormat sdf2 = new SimpleDateFormat("mm/dd/yyyy HH:mm:ss");
	try {
		newDeptTime.setTime(sdf2.parse(startDate+deptTime));
	}
	
	catch (ParseException e) {
		e.printStackTrace();
	}
	
	
	
	Calendar newArrivalTime= Calendar.getInstance();
	SimpleDateFormat sdf3 = new SimpleDateFormat("mm/dd/yyyyHH:mm:ss");
	try {
		newArrivalTime.setTime(sdf3.parse(startDate+arrivalTime));
	}
	
	catch (ParseException e) {
		e.printStackTrace();
	}
   Flight flight = new Flight();
   flight.setAirlineName(airlinename);
   flight.setArrivalTime(newArrivalTime);
   flight.setDaysOfWeek(dayOfWeek);
   flight.setDepartureTime(newDeptTime);
   flight.setDestination(destination);
   //flight.setFlightId(Integer.parseInt(flightId1));
   flight.setFlightName(flightname);
   flight.setFlightStatus(flightStatus);
   flight.setFlyingDate(newStartDate);
   flight.setFlyingEndDate(newEndDate);
   flight.setFlyingStartDate(newStartDate);
   //flight.setSeatsReserved(Integer.parseInt(seatreserved));
   flight.setTotalSeats(Integer.parseInt(totalSeats));
   //flight.setSeatsAvailable(Integer.parseInt(totalSeats) - Integer.parseInt(seatreserved));
   flight.setSource(source);
   flight.setDestination(destination);
   flight.setTicketPrice(Double.parseDouble(ticketPrice));
   PrintWriter out = response.getWriter();	
	session = request.getSession(false);
	String role = (String) session.getAttribute("role");
	
	int result = adminproxy.addFlight(flight);
	

	if(result!=-1){
		System.out.println("Added Successfully");
			request.setAttribute("message",
					"Successfully added flight to database.");
			nextJSP = "/View/GeneralView/welcome.jsp";

		} else {
			request.setAttribute("message", "Unable to create flight!");
			nextJSP = "/View/FlightView/addFlight.jsp";
		}
	
	RequestDispatcher dispatcher = getServletContext()
	.getRequestDispatcher(nextJSP);
dispatcher.forward(request, response);
		}
	}

	}

	

