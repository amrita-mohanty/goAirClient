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
 * Servlet implementation class editDeleteCustomer
 */
public class editemployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editemployee() {
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
		String airlineName = request.getParameter("airlineName");
		String jobDesc = request.getParameter("jobDesc");
		String position = request.getParameter("position");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String dateofbirth = request.getParameter("dob");
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
	     
	     Calendar hire_date = Calendar.getInstance();
			SimpleDateFormat sdf1 = new SimpleDateFormat("MMMddyyyy");
			try {
				hire_date.setTime(sdf1.parse(hireDate));
			} catch (ParseException e) {
				e.printStackTrace();
			} 
			
			 int hDay=hire_date.get(Calendar.DATE);
		     int hMonth=hire_date.get(Calendar.MONTH);
		     int hYear=hire_date.get(Calendar.YEAR);
			
		
	
		Employee emp = new Employee();

		emp.setEmployeeId(employeeId);
		emp.setPassword(password);
		emp.setFirstName(firstName);
		emp.setLastName(lastName);
		emp.setEmailId(emailId);
		emp.setGender(gender);
		emp.setAddress(address);
		emp.setAirlineName(airlineName);
		emp.setJobDesc(jobDesc);
		emp.setPosition(position);
		emp.setCity(city);
		emp.setState(state);
		emp.setDob(dob);
		emp.setHireDate(hire_date);		
		
		
		String buttonPress = request.getParameter("editemployee");
		request.setAttribute("employee",emp);
		
		request.setAttribute("bDay",bDay);
		request.setAttribute("bMonth",bMonth);
		request.setAttribute("bYear",bYear);
		
		System.out.println(bYear);
		System.out.println(emp.getPassword());
		
		if(buttonPress.contains("Edit"))
		{
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/EmployeeView/editemployee.jsp");
			dispatcher.forward(request, response);
		}
		
		
		if(buttonPress.contains("Delete"))
		{
			
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/EmployeeView/deleteemployee");
			dispatcher.forward(request, response);
		}

		
		
		
	}

}
