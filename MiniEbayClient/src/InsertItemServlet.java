

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.ItemEntityBean;
import user.ItemSessionBeanRemote;

/**
 * Servlet implementation class InsertItemServlet
 */
@WebServlet("/InsertItemServlet")
public class InsertItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB ItemSessionBeanRemote item ;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertItemServlet() {
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
		
		String brand = request.getParameter("brand");
		String model = request.getParameter("model");
		String bike_year = request.getParameter("bikeYear");
		String  category = request.getParameter("category");
		String condition = request.getParameter("condition");
		String email =  (String) session.getAttribute("email");
		
		System.out.println("email .. " + email);
		System.out.println("model .. " + model);
		
		
		boolean istored= item.storeItem( brand, model, category, bike_year, condition, email);
		
		if(istored==true)
		{	
	 	  
	 	 // Set the session attributes
	 	
			
			RequestDispatcher rd = request.getRequestDispatcher("insert.jsp");
			request.setAttribute("success", "Bike "+ brand+ " inserted" ); 
			rd.forward(request,response);
		}

		else
		{
			
			RequestDispatcher rd = request.getRequestDispatcher("insert.jsp");
		    request.setAttribute("error1", "Bike no stored"); 
		    rd.forward(request,response);
		}
	}//end doPost

}//end class
