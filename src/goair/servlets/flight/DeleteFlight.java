package goair.servlets.flight;

import goair.model.customer.Customer;
import goair.model.flight.Flight;
import goair.wsdl.AdminServicesProxy;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DeleteFlight
 */
public class DeleteFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteFlight() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		AdminServicesProxy adminProxy = new AdminServicesProxy();
		PrintWriter out = response.getWriter();	
		adminProxy.setEndpoint("http://localhost:8080/goAir/services/AdminServices");
		
		HttpSession session = request.getSession(false);
		String role = (String) session.getAttribute("role");
		
		int flightId = Integer.parseInt(request.getParameter("flightId"));
		
		Flight flight = new Flight();
	
		flight.setFlightId(flightId);

		int result = adminProxy.deleteFlight(flight);
		
		//System.out.println("customer to delete is "+customerId);

		if(result != -1)
		{
			request.setAttribute("message","Deleted Successfully !!");
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/FlightView/findFlight.jsp");
			dispatcher.forward(request, response);
		}
		
		else
		{
			request.setAttribute("message","Invalid Flight, Try Again !!");
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/FlightView/findFlight.jsp");
			dispatcher.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
