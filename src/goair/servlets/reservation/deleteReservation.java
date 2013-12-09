package goair.servlets.reservation;

import goair.model.employee.Employee;
import goair.model.reservation.Reservation;
import goair.wsdl.AdminServicesProxy;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class deleteReservation
 */
@WebServlet("/View/ReservationView/deleteReservation")
public class deleteReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteReservation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		
		long pnr = Long.parseLong(request.getParameter("pnr"));
		int flightId = Integer.parseInt(request.getParameter("flightId"));
		String customerId = (String)request.getParameter("customerId");
		int numberOfSeatsBooked = Integer.parseInt(request.getParameter("numberOfSeatsBooked"));
		String dateBooking = request.getParameter("dateOfBooking");
		String dateFlying = request.getParameter("dateOfFlying");
		double totalPrice = Double.parseDouble(request.getParameter("totalPrice"));
		String currentStatus = request.getParameter("currentStatus");
	
		
		
		Calendar dateOfBooking = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("E MMM HH:MM:SS Z YYYY");
		try {
			dateOfBooking.setTime(sdf.parse(dateBooking));
		} catch (ParseException e) {
			e.printStackTrace();
		} 
		
		/* int bDay=dateOfBooking.get(Calendar.DATE);
	     int bMonth=dateOfBooking.get(Calendar.MONTH);
	     int bYear=dateOfBooking.get(Calendar.YEAR);*/
	     
	     Calendar dateOfFlying = Calendar.getInstance();
		
			try {
				dateOfFlying.setTime(sdf.parse(dateFlying));
			} catch (ParseException e) {
				e.printStackTrace();
			} 
			
//			 int bDay=dob.get(Calendar.DATE);
//		     int bMonth=dob.get(Calendar.MONTH);
//		     int bYear=dob.get(Calendar.YEAR);
		     
			
			Reservation reservation = new Reservation();
			
			reservation.setPnr(pnr);
			reservation.setFlightId(flightId);
			reservation.setCustomerId(customerId);
			reservation.setNumberOfSeatsBooked(numberOfSeatsBooked);
			reservation.setDateOfBooking(dateOfBooking);
			reservation.setDateOfFlying(dateOfFlying);
			reservation.setTotalPrice(totalPrice);
			reservation.setCurrentStatus(currentStatus);
			reservation.setTotalPrice(totalPrice);
		
		
		
		int result = adminProxy.cancelReservation(reservation);
		

		if(result == -1)
		{
			request.setAttribute("message","Delete Failed !!");
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/ReservationView/viewAllReservations");
			dispatcher.forward(request, response);
		}
		
		if(result != -1)
		{
			request.setAttribute("message","Deleted Successfully !!");
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/GeneralView/viewAllReservations");
			dispatcher.forward(request, response);
		}
	}

}
