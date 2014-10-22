

import java.io.IOException;
import java.sql.Time;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.AuctionSessionBeanRemote;
import user.ItemSessionBeanRemote;

/**
 * Servlet implementation class CreateAuctionServlet
 */
@WebServlet("/CreateAuctionServlet")
public class CreateAuctionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB AuctionSessionBeanRemote auction ;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateAuctionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		ArrayList<String> items = auction.getAllItemsOfUser(email);
		System.out.println("items - " + items);
		request.setAttribute("items", items);
		
	
		RequestDispatcher rd = request.getRequestDispatcher("createAuction.jsp");
	    rd.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			HttpSession session = request.getSession();
			
			String item = request.getParameter("item_id");
			String[] splitItem = item.split("/"); 
			String itemId = splitItem[0];
			System.out.println("TEST -----> split item id " + itemId);
			//String name = splitItem[1];
			
			float start_price = Float.parseFloat(request.getParameter("start_price"));
			int days = Integer.parseInt(request.getParameter("days"));
			int hours = Integer.parseInt(request.getParameter("hours"));
			int minutes = Integer.parseInt(request.getParameter("minutes"));
			
			if(days==0 && hours==0 && minutes==0)
			{
				HttpSession session2 = request.getSession();
				String email = (String) session2.getAttribute("email");
				ArrayList<String> items = auction.getAllItemsOfUser(email);
				System.out.println("items - " + items);
				request.setAttribute("items", items);
				request.setAttribute("Error1", "Select an appropiate time"); 
			
				RequestDispatcher rd = request.getRequestDispatcher("createAuction.jsp");
			    rd.forward(request,response);
				
			}
			else
			{
							
				System.out.println("The days: "+days+" ,hours: "+ hours+" minutes: "+minutes+ " the start_price: "+start_price+"itemId: "+itemId);
				HttpSession session2 = request.getSession();
	
				
				String email = (String) session2.getAttribute("email");
				ArrayList<String> items = auction.getAllItemsOfUser(email);
				System.out.println("items - " + items);
				request.setAttribute("items", items);
				request.setAttribute("success", "Auction created for item "+itemId);
				
				Calendar cal = Calendar.getInstance ();
				Date start_date=cal.getTime();
				Time start_time= new Time(cal.getTimeInMillis());
				
				
				Calendar endCal = Calendar.getInstance();
				endCal.add(Calendar.DAY_OF_MONTH, days);
				endCal.add(Calendar.MINUTE, minutes);
				endCal.add(Calendar.HOUR_OF_DAY, hours);
				
				Date end_date = endCal.getTime();
				Time end_time = new Time (endCal.getTimeInMillis());
				short auction_status=0;
				auction.storeAuction(auction_status, start_price, start_date, start_time, end_date, end_time, Integer.valueOf(itemId));
			
				request.setAttribute("items", items);
				
				RequestDispatcher rd = request.getRequestDispatcher("createAuction.jsp");
			    rd.forward(request,response);				
			}
			
		}//end try
		catch(NumberFormatException n)
		{
			HttpSession session2 = request.getSession();
			String email = (String) session2.getAttribute("email");
			ArrayList<String> items = auction.getAllItemsOfUser(email);
			System.out.println("items - " + items);
			request.setAttribute("items", items);
			request.setAttribute("Error1", "Not appropriate number format"); 
		
			RequestDispatcher rd = request.getRequestDispatcher("createAuction.jsp");
		   //request.setAttribute("Error", "Invalid login username or password"); 
		    rd.forward(request,response);
			
		}
	}//end doPost

}//end class
