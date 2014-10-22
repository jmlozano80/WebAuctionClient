

import java.io.IOException;
import java.io.PrintWriter;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import user.UserSessionBeanRemote;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB UserSessionBeanRemote user ;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
   
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
		
		//get the user information from the form
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		boolean islogin=user.logingUser(email, password);
		//PrintWriter out = response.getWriter();
		System.out.println("boolean delete ");
		System.out.println("boolean login servet = "+islogin);
		
		if(islogin==true)
		{	HttpSession session = request.getSession();
	 	  
	 	 // Set the session attributes
	 	 session.setAttribute("validUser", user.getFirstName(email));
	 	 
	 	 session.setAttribute("firstname", user.getFirstName(email));
	 	 session.setAttribute("lastname", user.getLastName(email));
	 	 //email session attribute
	 	 session.setAttribute("email", email);	
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			
			rd.forward(request,response);
		}
		else
		{
			
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		    request.setAttribute("Error", "Invalid login username or password"); 
		    rd.forward(request,response);
		}
		
	}//end doPost

}//end class
