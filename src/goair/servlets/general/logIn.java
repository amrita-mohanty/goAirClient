package goair.servlets.general;

import goair.model.employee.Employee;
import goair.wsdl.AdminServicesProxy;
import goair.wsdl.AirlineServicesProxy;
import goair.wsdl.CustomerServicesProxy;
import goair.wsdl.EmployeeServicesProxy;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class logIn
 */
public class logIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public logIn() {
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
		AirlineServicesProxy airlineProxy = new AirlineServicesProxy();
		CustomerServicesProxy customerProxy = new CustomerServicesProxy();
		EmployeeServicesProxy employeeProxy = new EmployeeServicesProxy();
		
		String userName = request.getParameter("email");
		String password = request.getParameter("password");
		
	
		
		PrintWriter out = response.getWriter();	
		employeeProxy.setEndpoint("http://localhost:8080/goAir/services/EmployeeServices");
		
		HttpSession session = request.getSession(false);
		String role = (String) session.getAttribute("role");
		Employee emp = null ;
		
		//write a db query to get role from employee table
		
		if(role.contains("Admin"))
		{
			 emp  = employeeProxy.employeeLogin(userName, password);
		}
		 
		  
		
		 //request.setAttribute("employee",emp);
		 RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/GeneralView/welcome.jsp");
		 dispatcher.forward(request, response);
		
	}

}
