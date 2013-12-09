package goair.servlets.general;

import goair.model.customer.Customer;
import goair.model.employee.Employee;
import goair.wsdl.AdminServicesProxy;
import goair.wsdl.AirlineServicesProxy;
import goair.wsdl.CustomerServicesProxy;
import goair.wsdl.EmployeeServicesProxy;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

/**
 * Servlet implementation class logIn
 */
public class logIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger sLogger = Logger.getLogger(logIn.class);

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public logIn() {
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
		AdminServicesProxy adminProxy = new AdminServicesProxy();
		AirlineServicesProxy airlineProxy = new AirlineServicesProxy();
		CustomerServicesProxy customerProxy = new CustomerServicesProxy();
		EmployeeServicesProxy employeeProxy = new EmployeeServicesProxy();

		String userName = request.getParameter("email");
		String password = request.getParameter("password");

		sLogger.info("Checking login for username : " + userName + ", password : " + password);
		employeeProxy.setEndpoint("http://localhost:8080/goAir/services/EmployeeServices");
		
		HttpSession session = request.getSession(false);
		String role = (String) session.getAttribute("role");
		Employee emp = null ;
		Customer customer = null;
				
		if(role.contains("Admin"))
		{
			emp  = employeeProxy.employeeLogin(userName, password);
			
	
			if(emp != null && emp.getJobDesc().contains("admin")) {
				sLogger.info("Valid admin.");
				session.setAttribute("admin", emp);
			}
			else {
				sLogger.info("Invalid user/password for admin.");
			}
			
		}
		
		if(role.contains("Customer"))
		{
			customer  = customerProxy.customerLogin(userName, password);
			session.setAttribute("customer", customer);
	
			
		}
		
		if(role.contains("Employee"))
		{
			emp  = employeeProxy.employeeLogin(userName, password);
			session.setAttribute("employee", emp);
	
			if(emp != null && emp.getJobDesc().contains("employee")) {
				sLogger.info("Valid Employee");
				request.setAttribute("employee",emp);
			}
			else {
				sLogger.info("Invalid user/password for Employee");
			}
		}

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/GeneralView/welcome.jsp");
		dispatcher.forward(request, response);
	}
}
