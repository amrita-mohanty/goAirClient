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

/**
 * Servlet implementation class updateCustomer
 */
public class updateCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateCustomer() {
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
		
		HttpSession session = request.getSession(false);
		String role = (String) session.getAttribute("role");
		
		String customerId = request.getParameter("customerId");
		String password = request.getParameter("password");
		String fName = request.getParameter("firstName");
		String lName = request.getParameter("lastName");
		String emailId = request.getParameter("emailId");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String zipcode = request.getParameter("zipcode");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		String year = request.getParameter("year");
		
		String nationality = request.getParameter("nationality");
		String passportNum = request.getParameter("passNum");
		
		Calendar dob = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("MMMddyyyy");
		try {
			dob.setTime(sdf.parse(month+day+year));
		} catch (ParseException e) {
			e.printStackTrace();
		} 
	
		
		Customer customer = new Customer();
	
		customer.setCustomerId(customerId);
		customer.setFirstName(fName);
		customer.setLastName(lName);
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
		
		
		int result = adminProxy.editCustomer(customer);

		if(result != -1)
		{
			request.setAttribute("message","Update Successful !!");
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/GeneralView/viewAllCustomers");
			dispatcher.forward(request, response);
		}

		else
		{
			request.setAttribute("message","Update Unsuccessful, Try Again !!");
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/GeneralView/viewAllCustomers");
			dispatcher.forward(request, response);
		}
		
		
		
	
	}

}
