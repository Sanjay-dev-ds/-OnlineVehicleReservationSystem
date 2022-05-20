package Service;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Controller.RegisterDao;
import Model.Customer;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String FirstName = request.getParameter("FirstName");
		String LastName = request.getParameter("LastName");
		String PhoneNumber = request.getParameter("PhoneNumber");
		String Address = request.getParameter("Address");
		String Email = request.getParameter("Email");
		String Gender = request.getParameter("Gender");
		String Password = request.getParameter("Password");
		
		Customer customer = new Customer( FirstName,  LastName,  PhoneNumber,  Address,  Email,  Gender, Password);
		RegisterDao RDao = new RegisterDao();
		
		if (RDao.saveUser(customer)) {
			/**
			 * Redirects to Login Page
			 */
			   response.sendRedirect("login.jsp");
			} else {
			
			    response.sendRedirect("Register.jsp");
			    }

	}

}
