package goair.servlets.customer;

import goair.model.customer.Customer;
import goair.util.SearchParametersForCustomers;
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
 * Servlet implementation class viewAllCustomers
 */
public class viewAllCustomers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public viewAllCustomers() {
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
	protected void doPost(HttpServletRequest request,
		
		HttpServletResponse response) throws ServletException, IOException {
		AdminServicesProxy adminProxy = new AdminServicesProxy();
		System.out.println("view all customers");
		String message = (String) request.getAttribute("message");

		Customer[] result = adminProxy.getAllCustomersForAdmin();
		
		String[] dateBirth = new String[result.length];
		
		for(int i = 0;i<result.length ;i++)
		{
			Calendar dob = result[i].getDob();
			int bDay=dob.get(Calendar.DATE);
		    int bMonth=dob.get(Calendar.MONTH);
		    int bYear=dob.get(Calendar.YEAR);
		    
		    dateBirth[i]= bMonth+"/"+bDay+"/"+bYear;
		    
		    System.out.println( dateBirth[i]);
		}

        request.setAttribute("customers",result );
        request.setAttribute("dateBirth",dateBirth );
        
		if(result != null)
		{
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/CustomerView/viewAllCustomers.jsp");
			dispatcher.forward(request, response);
		}

	}

}
