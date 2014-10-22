

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Time;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Enumeration;
import java.util.GregorianCalendar;
import java.util.Map;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.AuctionSessionBeanRemote;
import user.BidSessionBeanRemote;
import user.ItemSessionBeanRemote;

/**
 * Servlet implementation class BidServlet
 */
@WebServlet("/BidServlet")
public class BidServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB AuctionSessionBeanRemote auction;
	@EJB ItemSessionBeanRemote item;   
	@EJB BidSessionBeanRemote bid;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BidServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String auctionId = request.getParameter("auctionId");
		HttpSession session = request.getSession();
		
		try {
			String successParameter = request.getParameter("success");
			if (successParameter.equals("true")) {
				request.setAttribute("success2", "YOUR BID WAS ADDED");
			} else {
				request.setAttribute("error2", "THE AUCTION ALREADY EXPIRED");
			}
		} catch (Exception e) {
			System.out.println("Shit happens");
		}
		
		
		
		int auctionID=Integer.parseInt(auctionId);
		Map<String, Object> auctionMap =  auction.getAuctionAttributes(auctionID);
		
		 
		
		 
		 int itemId= (int) auctionMap.get("itemId");
		 
		
		String success2="";
		 request.setAttribute("success", success2);
		 
		 
		//start price 
		 BigDecimal startPrice=(BigDecimal) auctionMap.get("startPrice");
		 request.setAttribute("startPrice", startPrice);
		 //end date
		 Date endDate=(Date) auctionMap.get("endDate");
		 System.out.println("The end date (from Servlet) is "+endDate);
		 
		 Calendar cal = new GregorianCalendar();
		 cal.setTime(endDate);
		 
		//end Time
		 Time endTime=(Time) auctionMap.get("endTime");
		 System.out.println("The end time (from Servlet) is "+endTime);
		 
		 
		 //  12/31/2020 5:00 
		 int day = cal.get(Calendar.DAY_OF_MONTH);
		 int month = cal.get(Calendar.MONTH);
		 // Since the month starts at 0
		 month++;
		 int year = cal.get(Calendar.YEAR);
		 
		 
		 String[] timeSplit = endTime.toString().split(":");
		 
		 
		 int hour = Integer.parseInt(timeSplit[0]); 
		 int minute = Integer.parseInt(timeSplit[1]);
		 int second =Integer.parseInt(timeSplit[2]);
		 
		 System.out.println("VUALA : " + month + "/" + day + "/" + year + " " + hour + ":" + minute+":"+second);
		
		 String dateStr = new String('\u0022'+""+ month + "/" + day + "/" + year + " " + hour + ":" + minute+":"+second+'\u0022');
		 
		 System.out.println( dateStr);
		 System.out.println("The string time for javascript "+ dateStr);
		//Time for countDown 
		 request.setAttribute("timeEnd", dateStr);	
		 
		 //auctionId 
		request.setAttribute("auctionId", auctionId);		 
		
				 
				 
		 System.out.println("SERVLET! itemId = " + itemId);
			
		
		
		//item attributes
		Map<String, Object> itemMap = item.getItemAttributes(itemId);
		
		String brand=(String) itemMap.get("brand");
		request.setAttribute("brand", brand);
		
		String model=(String) itemMap.get("model");
		request.setAttribute("model", model);
		
		String bikeYear=(String) itemMap.get("bikeYear");
		request.setAttribute("bikeYear", bikeYear);
		
		String condition=(String) itemMap.get("condition");
		request.setAttribute("condition", condition);
		
		String category=(String) itemMap.get("category");
		request.setAttribute("category", category);
		
		
		//Current bid
		
		//BigDecimal currentBid = bid.getMaxBid(auctionID);
		System.out.println("***********************************************************************" + bid.getMaxBid(auctionID).toString());
		if (bid.getMaxBid(auctionID).toString().equals("0")) {
			
			request.setAttribute("currentBid", "Nobody bid");
		} else {
			request.setAttribute("currentBid", bid.getMaxBid(auctionID));
		}
			
		
		
			
		
		
		
		
		
		Enumeration sessionNames = session.getAttributeNames();
		String sessionName = null;
		Object sessionValue = null;

		while (sessionNames.hasMoreElements()) {
		  sessionName = (String)sessionNames.nextElement();
		  sessionValue = session.getAttribute(sessionName);
		  System.out.println("Session name is " + sessionName +
		                     ", value is " + sessionValue);
		}
		
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher("bid.jsp");
	    rd.forward(request,response);
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String auctionId = request.getParameter("auctionId");
		HttpSession session = request.getSession();
		
		
		int auctionID=Integer.parseInt(auctionId);
		System.out.println("The AuctionId is : "+auctionId);
		
		String email =(String) session.getAttribute("email");
		System.out.println("The email is : "+email);
		
		String bidIncreaseStr = request.getParameter("bid");
		//This is strange
		double bidIncrease=Double.valueOf(bidIncreaseStr);
		System.out.println("The current bid increase is  : "+bidIncrease);
		
		BigDecimal bidBD=BigDecimal.valueOf(bidIncrease);
		System.out.println("The currentBid  : "+bidBD);
		BigDecimal currentBid = (BigDecimal) bid.getMaxBid(auctionID);
		
		if(currentBid.toString().equals("0"))
		{
			String startPriceStr= request.getParameter("startPrice");
			double startPriceD= Double.parseDouble(startPriceStr);
			BigDecimal startPrice =BigDecimal.valueOf(startPriceD);
			currentBid= startPrice;
			System.out.println("The current bid "+currentBid);
		}
		
		
		BigDecimal newBid= bidBD.add(currentBid);
		
		System.out.println("The new bid is  : "+newBid);
		
		boolean bidAccepted=bid.storeBid(auctionID, email, newBid);
		
		String success2="Your bid was accepted expired.";
		String error2="Your bid was not accepted. The auction ";
		if(bidAccepted==true)
		{
			request.setAttribute("success2", success2);
			
			String url1 = new String("BidServlet?auctionId="+auctionID);// BidServlet?auctionId=1798
			
			String url= new String('\u0022'+url1+'\u0022');
						
			response.sendRedirect("/MiniEbayClient/BidServlet?auctionId=" + auctionId + "&success=true");
			
		}
		else
		{
			
			
			response.sendRedirect("/MiniEbayClient/BidServlet?auctionId=" + auctionId + "&success=false");
		}
			

		
	}//end doPost

}//end servlet
