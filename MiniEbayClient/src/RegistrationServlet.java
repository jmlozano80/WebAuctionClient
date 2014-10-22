
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.UserSessionBeanRemote;
import email_sender.CopyOfGmailSender;
/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB UserSessionBeanRemote user ;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//initialise RequestDisptacher object; set forward to login page by default
				
				//get the user information from the form
				String firstname = request.getParameter("firstname");
				String lastname = request.getParameter("lastname");;
				String email = request.getParameter("email");
				String password = request.getParameter("password");
				
				boolean registered=user.emailExist(email);
				System.out.println("below "+registered);
				PrintWriter out = response.getWriter();
				
				if(registered==false)
				{
					user.storeUser(email,firstname, lastname, password);
					RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
					
					//Confirmation email
					
					final String subject="Wellcome to MiniEbay";
					final String body="Wellcome to 1 biker More || 1 bike less.\n Start selling or bidding for bicycles at anytime, anywhere.\n \n Kind Regards";
					final String sender="joselozano0066@gmail.com";
					final String doddgyEmail = email;
					final CopyOfGmailSender emailSender = new CopyOfGmailSender();
					Thread t = new Thread(new Runnable() 
				    {                   
				        public void run() 
				        {
				        	emailSender.sendMail(subject, body, sender, doddgyEmail);
				    				    		
				        }
				    });

				    t.start();
		
					rd.forward(request,response);
				}
				else
				{
				
					 //Query returns 1 record if the user already exists
					RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
				    request.setAttribute("Error", "Email already exist"); 
				   
				    rd.forward(request,response);
				}
		
	}//end doPost

}//end class
