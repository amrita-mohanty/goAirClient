package goair.servlets.reservation;

import goair.model.customer.Customer;
import goair.model.reservation.Reservation;
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
 * Servlet implementation class createReservation
 */
public class createReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public createReservation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdminServicesProxy adminProxy = new AdminServicesProxy();
		PrintWriter out = response.getWriter();	
		adminProxy.setEndpoint("http://localhost:8080/goAir/services/AdminServices");
		
		HttpSession session = request.getSession(false);
		String role = (String) session.getAttribute("role");
		
		String customerId = request.getParameter("customerId");
		int flightId = Integer.parseInt(request.getParameter("flightId"));
		int numberOfSeatsBooked = Integer.parseInt(request.getParameter("numberOfSeatsBooked"));
		//String dateBooking = request.getParameter("dateOfBooking");
		String dateFlying = request.getParameter("dateOfFlying");
		/*long creditCardNumber = Long.parseLong(request.getParameter("creditCardNumber"));
		double totalPrice = Double.parseDouble(request.getParameter("totalPrice"));
		*/
		
		//get price of one ticket of given flight id
		double totalPrice = numberOfSeatsBooked * getTicketPrice();
		String dateBooking = null;
				
		Calendar dateOfBooking = Calendar.getInstance();
		Calendar dateOfFlying = Calendar.getInstance();
		
		SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
		try {
			dateBooking = sdf.format(dateOfBooking.getTime());
			//dateOfBooking.setTime(sdf.parse(dateBooking));
			dateOfFlying.setTime(sdf.parse(dateFlying));
			
		} catch (ParseException e) {
			e.printStackTrace();
		} 
	
	   Reservation reservation = new Reservation();
	   reservation.setCustomerId(customerId);
	   reservation.setFlightId(flightId);
	   reservation.setNumberOfSeatsBooked(numberOfSeatsBooked);
	   reservation.setDateOfBooking(dateOfBooking);
	   reservation.setDateOfFlying(dateOfFlying);
	   //reservation.setCreditCardNumber(creditCardNumber);
	   reservation.setTotalPrice(totalPrice);
	   request.setAttribute("reservation",reservation);
	   request.setAttribute("dateBooking",dateBooking);
	   request.setAttribute("dateFlying",dateFlying);
	   RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/ReservationView/creditCardValidation.jsp");
	   dispatcher.forward(request, response);
	   
	}

	private double getTicketPrice() {
		// TODO Auto-generated method stub
		return 1200;
	}

}
