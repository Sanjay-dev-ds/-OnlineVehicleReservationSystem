package Service;



import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Controller.LoginDao;
import Model.LoginModel;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Login() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LoginDao LDao = new LoginDao();
		String Email = request.getParameter("Email");
		String Password = request.getParameter("Password");
	
		LoginModel customer = new LoginModel();
		customer.setEmail(Email);
		customer.setPassword(Password);
		
	
	
		if (LDao.validateLogin(customer)) {
			/**
			 * gets Email to the session
			 */
			  HttpSession session = request.getSession();
			    session.setAttribute("Email", Email);
			   response.sendRedirect("Home.jsp");
			} else {
			    response.sendRedirect("login.jsp");
			    }

	}

}
