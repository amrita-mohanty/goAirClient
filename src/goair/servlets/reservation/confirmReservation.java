package goair.servlets.reservation;

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

/**
 * Servlet implementation class confirmReservation
 */
public class confirmReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public confirmReservation() {
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
		AdminServicesProxy adminProxy = new AdminServicesProxy();
		PrintWriter out = response.getWriter();	
		adminProxy.setEndpoint("http://localhost:8080/goAir/services/AdminServices");
		
		String customerId = request.getParameter("customerId");
		int flightId = Integer.parseInt(request.getParameter("flightId"));
		int numberOfSeatsBooked = Integer.parseInt(request.getParameter("numberOfSeatsBooked"));
		String dateBooking = request.getParameter("dateOfBooking");
		String dateFlying = request.getParameter("dateOfFlying");
		String creditCardNumber = request.getParameter("creditCardNumber");
		double totalPrice = Double.parseDouble(request.getParameter("totalPrice"));
		
		Calendar dateOfBooking = Calendar.getInstance();
		Calendar dateOfFlying = Calendar.getInstance();
		
		SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
		try {
			dateOfBooking.setTime(sdf.parse(dateBooking));
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
	   reservation.setCreditCardNumber(creditCardNumber);
	   reservation.setTotalPrice(totalPrice);

	   int result = adminProxy.addReservation(reservation);
		
		if(result != -1)
		{
			request.setAttribute("message","Reservation Created !!");
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/GeneralView/welcome.jsp");
			dispatcher.forward(request, response);
			
		}

		else
		{
			request.setAttribute("message","Reservation Creation Unsuccessful, Try Again !!");
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/ReservationView/createReservation.jsp");
			dispatcher.forward(request, response);
		}

	}

}
