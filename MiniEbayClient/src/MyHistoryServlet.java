import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
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

/**
 * Servlet implementation class MyHistoryServlet
 */
@WebServlet("/MyHistoryServlet")
public class MyHistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     @EJB AuctionSessionBeanRemote auctionSession;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyHistoryServlet() 
    {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		String email = (String) request.getSession().getAttribute("email");
		System.out.println("Inside doGet MyServletHistory");
		HttpSession session = request.getSession();
		
		
		ArrayList<Map<String,String>> myList = new ArrayList<Map<String,String>>();
		
		myList = auctionSession.getAuctionHistory(email);
		System.out.println("MYLIST !!!!!!!!!!!!!!!! " + myList);
		
		request.setAttribute("auctions", myList);
		
		RequestDispatcher rd = request.getRequestDispatcher("myHistory.jsp");
		rd.forward(request, response);
		//Forward to myHistory
		
		
	}//end doGet

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}//end doPost

}//end Servlet
