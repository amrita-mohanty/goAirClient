package goair.servlets.employee;

import goair.model.customer.Customer;
import goair.model.employee.Employee;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class editProfileEmployee
 */
@WebServlet("/View/EmployeeView/editProfileEmployee")
public class editProfileEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editProfileEmployee() {
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
		
		HttpSession session = request.getSession(false);
		String role = (String) session.getAttribute("role");
		Employee employee = null;
		
		if(role.contains("Employee"))
		{
		employee  = (Employee) session.getAttribute("employee");


		
		Calendar dob = employee.getDob();
	
		
		 int bDay=dob.get(Calendar.DATE);
	     int bMonth=dob.get(Calendar.MONTH);
	     int bYear=dob.get(Calendar.YEAR);
	     

			Calendar hd = employee.getHireDate();
		
			
			 int hDay=hd.get(Calendar.DATE);
		     int hMonth=hd.get(Calendar.MONTH);
		     int hYear=hd.get(Calendar.YEAR);
		
		request.setAttribute("employeeId",employee.getEmployeeId());
		request.setAttribute("password",employee.getPassword());
		request.setAttribute("fistName",employee.getFirstName());
		request.setAttribute("lastName",employee.getLastName());
		request.setAttribute("emailId",employee.getEmailId());
		request.setAttribute("gender",employee.getGender());
		request.setAttribute("address",employee.getAddress());
		request.setAttribute("city",employee.getCity());
		request.setAttribute("state",employee.getState());
		request.setAttribute("month",bMonth);
		request.setAttribute("day",bDay);
		request.setAttribute("year",bYear);
		
		request.setAttribute("airlineName",employee.getAirlineName());
		request.setAttribute("jobDesc",employee.getJobDesc());
		request.setAttribute("position",employee.getPosition());
		request.setAttribute("month",hMonth);
		request.setAttribute("day",hDay);
		request.setAttribute("year",hYear);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/CustomerView/editemployee");
		dispatcher.forward(request, response);
		// TODO Auto-generated method stub
	}
	}

}
