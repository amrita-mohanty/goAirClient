package testWebservice;

import java.util.Calendar;
import java.util.Date;

import goair.model.flight.Flight;
import goair.util.SearchParametersForFlights;
import goair.wsdl.CustomerServicesProxy;

public class TestCustomerServiceWS {

	public static void main(String[] args) {
		try{
			CustomerServicesProxy proxy = new CustomerServicesProxy
					("http://localhost:8080/goAir/services/CustomerServices");
			
			Flight[] searchResult = null;
			Calendar cal = Calendar.getInstance();
			cal.set(2013, 8, 15);
			SearchParametersForFlights searchParam = new SearchParametersForFlights();
			searchParam.setDateOfFlying(cal);
			searchParam.setSource("San Francisco");
			searchParam.setDestination("Las Vegas");
			
			searchResult = proxy.searchFlights(searchParam);
			
			
			if(searchResult != null)
			{
				for(int i=0; i< searchResult.length; i++)
				{
					System.out.println("Flight-" + i+1 + " info : " + searchResult[i].toString());
				}
			}
			else
			{
				System.out.println("No match");
			}
		}
		catch(Exception e){
			System.err.println("Error Msg : " + e.getMessage());
			e.printStackTrace();
		}
		
		
	}

}
