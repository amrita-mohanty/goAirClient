package goair.servlets.employee;

import goair.model.customer.Customer;
import goair.model.employee.Employee;
import goair.util.SearchParametersForEmployees;
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
public class deleteemployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteemployee() {
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
		
		int employeeId = Integer.parseInt(request.getParameter("employeeId"));
		
		Employee emp = new Employee();
	
		emp.setEmployeeId(employeeId);
		int result = adminProxy.deleteEmployee(emp);
		
		//System.out.println("employee to delete is "+employeeId);

		if(result == -1)
		{
			request.setAttribute("message","Invalid Email, Try Again !!");
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/GeneralView/viewAllEmployees");
			dispatcher.forward(request, response);
		}
		
		if(result != -1)
		{
			request.setAttribute("message","Deleted Successfully !!");
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/EmployeeView/viewAllEmployees");
			dispatcher.forward(request, response);
		}
		
	}

}
