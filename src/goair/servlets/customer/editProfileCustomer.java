package goair.servlets.customer;

import goair.model.customer.Customer;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class editProfileCustomer
 */
@WebServlet("/View/CustomerView/editProfileCustomer")
public class editProfileCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editProfileCustomer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		String role = (String) session.getAttribute("role");
		Customer customer = null;
		
		if(role.contains("Customer"))
		{
			customer  = (Customer) session.getAttribute("customer");
			
			
			
			Calendar dob = customer.getDob();
		
			
			 int bDay=dob.get(Calendar.DATE);
		     int bMonth=dob.get(Calendar.MONTH);
		     int bYear=dob.get(Calendar.YEAR);
		     
			
			request.setAttribute("customerId",customer.getCustomerId());
			request.setAttribute("password",customer.getPassword());
			request.setAttribute("firstName",customer.getFirstName());
			request.setAttribute("lastName",customer.getLastName());
			request.setAttribute("emailId",customer.getEmailId());
			request.setAttribute("gender",customer.getGender());
			request.setAttribute("address",customer.getAddress());
			request.setAttribute("city",customer.getCity());
			request.setAttribute("state",customer.getState());
			request.setAttribute("zipcode",customer.getZipcode());
			
			
			request.setAttribute("month",bMonth);
			request.setAttribute("day",bDay);
			request.setAttribute("year",bYear);
			
			request.setAttribute("nationality",customer.getNationality());
			request.setAttribute("passNum",customer.getPassportNum());
			
			
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/CustomerView/updateCustomers");
			dispatcher.forward(request, response);
	
			
		}
		
		
	}

}
