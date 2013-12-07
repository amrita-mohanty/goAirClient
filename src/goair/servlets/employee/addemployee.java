
package goair.servlets.employee;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import goair.model.employee.Employee;
import goair.model.general.Person;
import goair.wsdl.AdminServicesProxy;

/**
 * Servlet implementation class SignUpServlet
 */
@WebServlet("/addemployee")
public class addemployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	 /**
     * @see HttpServlet#HttpServlet()
     */
    public addemployee() {
        super();
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
		
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String zipcode = request.getParameter("zipcode");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		String year = request.getParameter("year");
		String month_of_hiring = request.getParameter("month_of_hiring");
		String day_of_hiring = request.getParameter("day_of_hiring");
		String year_of_hiring = request.getParameter("year_of_hiring");
		String airlineName = request.getParameter("airlineName");
		String jobDesc = request.getParameter("jobDesc");
		String position = request.getParameter("position");
		String emailId = request.getParameter("emailId");
		String password = request.getParameter("password");
		
		Calendar dob = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("MMMddyyyy");
		try {
			dob.setTime(sdf.parse(month+day+year));
		} catch (ParseException e) {
			e.printStackTrace();
		} 
		Calendar hireDate = Calendar.getInstance();
		SimpleDateFormat sdf1 = new SimpleDateFormat("MMMddyyyy");
		try {
			hireDate.setTime(sdf1.parse(month_of_hiring + day_of_hiring + year_of_hiring));
		} catch (ParseException e) {
			e.printStackTrace();
		} 
		
		Employee emp = new Employee();
		
		emp.setFirstName(firstName);
		emp.setLastName(lastName);
		emp.setGender(gender);
		emp.setAddress(address);
		emp.setCity(city);
		emp.setState(state);
		emp.setZipcode(zipcode);
		emp.setDob(dob);
	    emp.setAirlineName(airlineName);
	    emp.setJobDesc(jobDesc);
	    emp.setPosition(position);
	    emp.setHireDate(hireDate);
		emp.setEmailId(emailId);
		emp.setPassword(password);
		
		
		PrintWriter out = response.getWriter();	
		adminProxy.setEndpoint("http://localhost:8080/goAir/services/AdminServices");
		
		HttpSession session = request.getSession(false);
		String role = (String) session.getAttribute("role");
		
		int result = adminProxy.addEmployee(emp);
		
		if(result!=-1)
			System.out.println("Registered Successfully");
	}

}