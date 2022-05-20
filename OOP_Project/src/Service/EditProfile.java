package Service;



import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Controller.EditProfileDao;
import Model.Customer;

/**
 * Servlet implementation class EditProfile
 */
@WebServlet("/EditProfile")
public class EditProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public EditProfile() {
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
		String Gender = request.getParameter("Gender");
		String Email = request.getParameter("Email");
	
		
		Customer customer = new Customer( FirstName,  LastName,  PhoneNumber,  Address, Email,Gender);
		EditProfileDao EDao = new EditProfileDao();
		
		if (EDao.saveUser(customer)) {
			/**
			 * Redirects to MyProfile Page
			 */
			   response.sendRedirect("MyProfile.jsp");
			} else {
				
			
			    }

	}

}
