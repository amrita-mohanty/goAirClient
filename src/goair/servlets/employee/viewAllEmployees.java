package goair.servlets.employee;

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
 * Servlet implementation class viewAllEmployees
 */
public class viewAllEmployees extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public viewAllEmployees() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdminServicesProxy adminProxy = new AdminServicesProxy();
		System.out.println("view all employees");
		String message = (String) request.getAttribute("message");

		Employee[] result = adminProxy.getAllEmployeesForAdmin();
		
        request.setAttribute("employees",result );
        
		if(result != null)
		{
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/EmployeeView/viewAllEmployees.jsp");
			dispatcher.forward(request, response);
		}

	}

}




