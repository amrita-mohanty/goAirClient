package goair.servlets.flight;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import goair.util.SearchParametersForCustomers;
import goair.wsdl.AdminServicesProxy;
import goair.wsdl.AirlineServicesProxy;
import goair.model.flight.Flight;
import goair.util.SearchParametersForFlights;

/**
 * Servlet implementation class FindFlight
 */
public class FindFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AdminServicesProxy adminproxy = new AdminServicesProxy();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindFlight() {
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
		
		adminproxy.setEndpoint("http://localhost:8080/goAir/services/AdminServices");
		SearchParametersForFlights objFlight = new SearchParametersForFlights();
		Flight[] searchedFlight;
	    objFlight.setFlightName(request.getParameter("flightName"));
	    
	
	//String flightName = request.getParameter("savedname");
	
	//objFlight.setFlightNumber(flightNumber);
	
	//flights [] result = adminproxy.searchFlightsForAdmin(objFlight);
	/*request.setAttribute("flights",result );
    
    if(result != null)
    {
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/CustomerView/FindFlights.jsp");
            dispatcher.forward(request, response);
    }
	*/
	
	
	request.setAttribute("savedName", request.getParameter("flightName"));
	
	objFlight.setAirlineName(request.getParameter("airlineName"));
	request.setAttribute("savedAirline", request.getParameter("airlineName"));
	
	objFlight.setSource(request.getParameter("source"));
	request.setAttribute("savedSource", request.getParameter("source"));
	
	objFlight.setDestination(request.getParameter("destination"));
	request.setAttribute("savedDestination", request.getParameter("destination"));
	
	String flydate = request.getParameter("flyingdate");
	Calendar newFlyDate = Calendar.getInstance();
	SimpleDateFormat sdf = new SimpleDateFormat("MM/DD/YYYY");
	
	if(!flydate.equals("")){
	try {
		newFlyDate.setTime(sdf.parse(flydate));
	} catch (ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	System.out.print("FlyingDate"+ flydate);
	System.out.print("FlyingDate"+ newFlyDate);
	objFlight.setDateOfFlying(newFlyDate);
	}
	
		
	adminproxy.setEndpoint("http://localhost:8080/goAir/services/AdminServices");
	
	searchedFlight = adminproxy.searchFlightsForAdmin(objFlight);
	
	request.setAttribute("SearchFlight", searchedFlight);
	String nextJSP = "/View/FlightView/FindFlight.jsp";
	RequestDispatcher dispatcher = getServletContext()
			.getRequestDispatcher(nextJSP);
	dispatcher.forward(request, response);	
	}

}
