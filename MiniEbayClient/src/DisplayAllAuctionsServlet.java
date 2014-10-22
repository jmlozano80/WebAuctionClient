

import java.io.IOException;
import java.util.ArrayList;
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
import user.ItemSessionBeanRemote;

/**
 * Servlet implementation class DisplayAllAuctionsServlet
 */
@WebServlet("/DisplayAllAuctionsServlet")
public class DisplayAllAuctionsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB AuctionSessionBeanRemote auction ;
	@EJB ItemSessionBeanRemote item ;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayAllAuctionsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
			
		ArrayList<Map<String, String>> auctions = auction.getAllAuctionsDetails();
		ArrayList<String> categories = item.getAuctionedCategories();
		System.out.println("Auctions number = " + auctions.size() + " Categories size = " + categories.size());
		
		if(auctions.size()==0||categories.size()==0)
		{
			RequestDispatcher rd = request.getRequestDispatcher("noAuctions.jsp");
		    rd.forward(request,response);
		}
		System.out.println("categories - " + categories);
		
		request.setAttribute("categories", categories);
		request.setAttribute("auctions", auctions);
				
		RequestDispatcher rd = request.getRequestDispatcher("displayAllAuction.jsp");
	    rd.forward(request,response);
	    
	}//end doGet

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String category = request.getParameter("category");
	//call for a method to get all auctions from one category
		System.out.println("The category from the drop down menu (servlet) is: " +category);
		
		ArrayList<Map<String, String>> auctions = auction.getAllAuctionsDetailsOfCategory(category);
		ArrayList<String> categories = item.getAuctionedCategories();
		if(auctions.size()==0)
		{
			RequestDispatcher rd = request.getRequestDispatcher("noAuctions.jsp");
		    rd.forward(request,response);
		}
	
		request.setAttribute("auctions", auctions);
		request.setAttribute("categories", categories);
		System.out.println("JUST BEFORE  request.getRequestDispatcher(displayAllAuction.jsp" );		
		RequestDispatcher rd = request.getRequestDispatcher("displayAllAuction.jsp");
	    rd.forward(request,response);
	
	}//end doPost

}//end class
