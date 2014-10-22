

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.AuctionSessionBeanRemote;

/**
 * Servlet implementation class DisplayAuctionByCategoryServlet
 */
@WebServlet("/DisplayAuctionByCategoryServlet")
public class DisplayAuctionByCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB AuctionSessionBeanRemote auction ;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayAuctionByCategoryServlet() {
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
		HttpSession session = request.getSession();
		
		String category = request.getParameter("category");
	}

}
