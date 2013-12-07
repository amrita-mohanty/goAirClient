package goair.servlets.customer;

import goair.model.customer.Customer;
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

import sun.util.calendar.CalendarDate;

/**
 * Servlet implementation class editDeleteCustomer
 */
public class editDeleteCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editDeleteCustomer() {
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
		
		HttpSession session = request.getSession(false);
		String role = (String) session.getAttribute("role");
		
		String customerId = request.getParameter("customerId");
		String password = request.getParameter("password");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String emailId = request.getParameter("emailId");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String dateofbirth =    request.getParameter("dob");
		String nationality = request.getParameter("nationality");
		String passportNum = request.getParameter("passportNum");
		
		//System.out.println(dateofbirth);
		
		Calendar dob = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("MMMddyyyy");
		try {
			dob.setTime(sdf.parse(dateofbirth));
		} catch (ParseException e) {
			e.printStackTrace();
		} 
		
		 int bDay=dob.get(Calendar.DATE);
	     int bMonth=dob.get(Calendar.MONTH);
	     int bYear=dob.get(Calendar.YEAR);
		
	
		Customer customer = new Customer();

		customer.setCustomerId(Integer.parseInt(customerId));
		customer.setPassword(password);
		customer.setFirstName(firstName);
		customer.setLastName(lastName);
		customer.setEmailId(emailId);
		customer.setGender(gender);
		customer.setAddress(address);
		customer.setCity(city);
		customer.setState(state);
		customer.setDob(dob);
		customer.setNationality(nationality);
		customer.setPassportNum(passportNum);
		
		
		
		
		
		String buttonPress = request.getParameter("editDeleteCustomer");
		request.setAttribute("customer",customer);
		
		request.setAttribute("bDay",bDay);
		request.setAttribute("bMonth",bMonth);
		request.setAttribute("bYear",bYear);
		
		System.out.println(bYear);
		System.out.println(customer.getPassword());
		
		if(buttonPress.contains("Edit"))
		{
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/CustomerView/updateCustomer.jsp");
			dispatcher.forward(request, response);
		}
		
		
		if(buttonPress.contains("Delete"))
		{
			
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/CustomerView/deleteCustomer");
			dispatcher.forward(request, response);
		}

		
		
		
	}

}
