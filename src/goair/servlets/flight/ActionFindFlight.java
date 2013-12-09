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
 * Servlet implementation class ActionFindFlight
 */
public class ActionFindFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ActionFindFlight() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		AdminServicesProxy adminProxy = new AdminServicesProxy();
		PrintWriter out = response.getWriter();	
		adminProxy.setEndpoint("http://localhost:8080/goAir/services/AdminServices");
		Customer[] cust = new Customer[10];
		Employee [] emp = new Employee[10];
		HttpSession session = request.getSession(false);
		String role = (String) session.getAttribute("role");
		
		String flightname = request.getParameter("flightName");
		String flightId = request.getParameter("flightId");
		String airlinename = request.getParameter("airlineName");
		String source = request.getParameter("source");
		String destination = request.getParameter("destination");
		String deptTime = request.getParameter("departureTime");
		String arrivalTime = request.getParameter("arrivalTime");
		//String startDate = request.getParameter("flyingStartDate");
		//String endDate = request.getParameter("flyingEndDate");
		String flighStatus = request.getParameter("flightStatus");
		String totalSeats = request.getParameter("totalSeats");
		String dayOfWeek = request.getParameter("dayofweek"); 
		
		Flight flight = new Flight();
		
		/*Calendar newStartDate = Calendar.getInstance();
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
		SimpleDateFormat sdf2 = new SimpleDateFormat("mm/dd/yyyyHH:mm:ss");
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
		
			*/
	   flight.setAirlineName(airlinename);
	   //flight.setArrivalTime(newArrivalTime);
	   flight.setDaysOfWeek(dayOfWeek);
	   //flight.setDepartureTime(newDeptTime);
	   flight.setDestination(destination);
	   flight.setFlightId(Integer.parseInt(flightId));
	   flight.setFlightName(flightname);
	   flight.setFlightStatus(flighStatus);
	   //flight.setFlyingDate(newStartDate);
	   //flight.setFlyingEndDate(newEndDate);
	  // flight.setFlyingStartDate(newStartDate);
	   //flight.setSeatsReserved(Integer.parseInt(seatreserved));
	   flight.setTotalSeats(Integer.parseInt(totalSeats));
	   flight.setSource(source);
	   flight.setDestination(destination);
	   
	   String buttonPress = request.getParameter("actionFlight");
		request.setAttribute("flight",flight);

		if(buttonPress.contains("Update"))
		{
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/FlightView/updateFlight.jsp");
			dispatcher.forward(request, response);
		}
		
		if(buttonPress.contains("Delete"))
		{
			
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/FlightView/deleteFlight");
			dispatcher.forward(request, response);
		}
	}

}
