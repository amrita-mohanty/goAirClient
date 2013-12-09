package goair.servlets.customer;

import goair.model.customer.Customer;
import goair.util.SearchParametersForCustomers;
import goair.wsdl.AdminServicesProxy;
import goair.wsdl.CustomerServicesProxy;

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
 * Servlet implementation class searchCustomer
 */
public class searchCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public searchCustomer() {
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
		
		String customerId = request.getParameter("customerId");
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
	
		
		SearchParametersForCustomers searchParameters = new SearchParametersForCustomers();
		
		searchParameters.setCustomerId(customerId);
		searchParameters.setFirstName(fname);
		searchParameters.setLastName(lname);
		searchParameters.setGender(gender);
		searchParameters.setAddress(address);
		searchParameters.setCity(city);
		searchParameters.setState(state);
		searchParameters.setZipcode(zipcode);
		searchParameters.setDob(dob);
		searchParameters.setPassportNum(passportNum);
		searchParameters.setEmailId(emailId);
		searchParameters.setPassword(password);
		searchParameters.setNationality(nationality);
		
		
		PrintWriter out = response.getWriter();	
		adminProxy.setEndpoint("http://localhost:8080/goAir/services/AdminServices");
		
		HttpSession session = request.getSession(false);
		String role = (String) session.getAttribute("role");
		
		
		
	
		Customer[] result = adminProxy.searchCustomersForAdmin(searchParameters);
		 request.setAttribute("customers",result );
	        
	        
			if(result != null)
			{
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/CustomerView/viewAllCustomers.jsp");
				dispatcher.forward(request, response);
			}
		
	}

}
