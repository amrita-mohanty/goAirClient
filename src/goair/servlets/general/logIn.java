package goair.servlets.general;

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
		if(role.contains("Admin"))
		{
			emp  = employeeProxy.employeeLogin(userName, password);
			if(emp != null) {
				sLogger.info("Valid admin.");
			}
			else {
				sLogger.info("Invalid user/password for admin.");
			}
		}

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/GeneralView/welcome.jsp");
		dispatcher.forward(request, response);
	}
}
