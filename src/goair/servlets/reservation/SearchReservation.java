package goair.servlets.reservation;

import goair.wsdl.AdminServicesProxy;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import goair.wsdl.AdminServicesProxy;
import goair.wsdl.AirlineServicesProxy;
import goair.model.reservation.Reservation;

/**
 * Servlet implementation class SearchBookingAdmin
 */
public class SearchReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AdminServicesProxy adminproxy = new AdminServicesProxy();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchReservation() {
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
		
		if(null==request.getAttribute("searchBookingAdmin"))
		{
			adminproxy.setEndpoint("http://localhost:8080/goAir/services/AdminServices");
			Reservation[] searchReservation;
			adminproxy.setEndpoint("http://localhost:8080/goAir/services/AdminServices");
			int count=0;
			
			if(request.getParameter("selCount").compareToIgnoreCase("all") !=0)
			count= Integer.parseInt(request.getParameter("selCount"));
			else
			count = 0;
			searchReservation = adminproxy.getAllReservationsForAdmin();	
			request.setAttribute("SearchReservation", searchReservation);
		
		}
	
			String nextJSP = "/View/ReservationView/viewAllReservations.jsp";
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
			dispatcher.forward(request, response);	   
	}

}
