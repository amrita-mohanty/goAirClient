package goair.servlets.customer;

import goair.model.customer.Customer;
import goair.wsdl.AdminServicesProxy;
import goair.wsdl.AirlineServicesProxy;
import goair.wsdl.CustomerServicesProxy;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SignUp
 */
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUp() {
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
		
		CustomerServicesProxy customerProxy = new CustomerServicesProxy();
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String zipcode = request.getParameter("zipcode");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		String year = request.getParameter("year");
		String passportNum = request.getParameter("passNum");
		String emailId = request.getParameter("email");
		String password = request.getParameter("password");
		String nationality = request.getParameter("nationality");
		
		
		
		Calendar dob = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("MMMddyyyy");
		try {
			dob.setTime(sdf.parse(month+day+year));
		} catch (ParseException e) {
			e.printStackTrace();
		} 
	
		
		
		Customer customer = new Customer();
		customer.setFirstName(fname);
		customer.setLastName(lname);
		customer.setGender(gender);
		customer.setAddress(address);
		customer.setCity(city);
		customer.setState(state);
		customer.setZipcode(zipcode);
		customer.setDob(dob);
		customer.setPassportNum(passportNum);
		customer.setEmailId(emailId);
		customer.setPassword(password);
		customer.setNationality(nationality);
		
		
		PrintWriter out = response.getWriter();	
		customerProxy.setEndpoint("http://localhost:8080/goAir/services/CustomerServices");
		
		HttpSession session = request.getSession(false);
		String role = (String) session.getAttribute("role");
		
		int result = customerProxy.addCustomer(customer);
		
		if(result!=-1)
			System.out.println("Registered Successfully");
	}

}
