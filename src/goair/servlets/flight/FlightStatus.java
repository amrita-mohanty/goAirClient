package goair.servlets.flight;

import goair.wsdl.AdminServicesProxy;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class FlightStatus
 */
@WebServlet("/FlightStatus")
public class FlightStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FlightStatus() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			String nextJSP = "";
			HttpSession session = request.getSession(true);
			AdminServicesProxy adminproxy = new AdminServicesProxy();
			adminproxy.setEndpoint("http://localhost:8080/goAir/services/AdminServices");

			int flightId = Integer.parseInt(request.getParameter("flightId"));
			String flightStatus = request.getParameter("status");

			//adminproxy.up
			nextJSP = "/View/FlightView/flighStatus.jsp";


			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
			dispatcher.forward(request, response);
		}
		catch(NumberFormatException ex){
		}

	}

}


