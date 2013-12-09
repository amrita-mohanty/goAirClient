package goair.servlets.customer;

import goair.model.customer.Customer;
import goair.util.SearchParametersForCustomers;
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
 * Servlet implementation class deleteCustomer
 */
public class deleteCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteCustomer() {
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
		
		int customerId = Integer.parseInt(request.getParameter("customerId"));
		
		Customer customer = new Customer();
	
		customer.setCustomerId(customerId);
		int result = adminProxy.deleteCustomer(customer);
		
		//System.out.println("customer to delete is "+customerId);

		if(result != -1)
		{
			request.setAttribute("message","Deleted Successfully !!");
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/GeneralView/viewAllCustomers");
			dispatcher.forward(request, response);
		}
		
		else
		{
			request.setAttribute("message","Invalid Customer, Try Again !!");
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/CustomerView/viewAllCustomers");
			dispatcher.forward(request, response);
		}
		
		
		
	}

}
