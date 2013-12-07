package goair.servlets.employee;

import goair.model.employee.Employee;
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

import sun.util.calendar.CalendarDate;


/**
 * Servlet implementation class editDeleteEmployee
 */
public class editDeleteEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public editDeleteEmployee() {
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
		// TODO Auto-generated method stub
		AdminServicesProxy adminProxy = new AdminServicesProxy();
		PrintWriter out = response.getWriter();	
		adminProxy.setEndpoint("http://localhost:8080/goAir/services/AdminServices");
		
		HttpSession session = request.getSession(false);
		String role = (String) session.getAttribute("role");
		
		String employeeId = request.getParameter("employeeId");
		String password = request.getParameter("password");
		String firstName = request.getParameter("fistName");
		String lastName = request.getParameter("lastName");
		String emailId = request.getParameter("emailId");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String dateofbirth = request.getParameter("dob");
		String airlineName = request.getParameter("airlineName");
		String jobDesc = request.getParameter("jobDesc");
		String position = request.getParameter("position");
		String hireDate = request.getParameter("hireDate");
		
		
		Calendar dob = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("MMMddyyyy");
		try {
			dob.setTime(sdf.parse(dateofbirth));
		} catch (ParseException e) {
			e.printStackTrace();
		} 
		 int bDay=dob.get(Calendar.DATE);
	     int bMonth=dob.get(Calendar.MONTH);
	     int bYear=dob.get(Calendar.YEAR);
		

	     Calendar doh = Calendar.getInstance();
	     try {
	    	 doh.setTime(sdf.parse(hireDate));
	     } catch (ParseException e) {
	    	 e.printStackTrace();
	     } 
	     int hDay=doh.get(Calendar.DATE);
		 int hMonth=doh.get(Calendar.MONTH);
		 int hYear=doh.get(Calendar.YEAR);	     
	
		Employee employee = new Employee();

		employee.setEmployeeId(Integer.parseInt(employeeId));
		employee.setPassword(password);
		employee.setFirstName(firstName);
		employee.setLastName(lastName);
		employee.setEmailId(emailId);
		employee.setGender(gender);
		employee.setAddress(address);
		employee.setCity(city);
		employee.setState(state);
		employee.setDob(dob);
		employee.setAirlineName(airlineName);
		employee.setJobDesc(jobDesc);
		employee.setPosition(position);		
		employee.setHireDate(doh);
		
		
		String buttonPress = request.getParameter("editDeleteEmployee");
		request.setAttribute("employee",employee);
		
		request.setAttribute("hDay",hDay);
		request.setAttribute("hMonth",hMonth);
		request.setAttribute("hYear",hYear);
		
		System.out.println(hYear);
		System.out.println(employee.getPassword());
		
		if(buttonPress.contains("Edit"))
		{	RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/EmployeeView/updateEmployee.jsp");
			dispatcher.forward(request, response);
		}
		
		
		if(buttonPress.contains("Delete"))
		{	RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/EmployeeView/deleteEmployee.jsp");
			dispatcher.forward(request, response);
		}

	}

}

		
