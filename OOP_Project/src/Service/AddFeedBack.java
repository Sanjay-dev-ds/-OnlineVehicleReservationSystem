package Service;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.AddFeedBackDao;
import Model.Feedback;

/**
 * Servlet implementation class AddFeedBack
 */
@WebServlet("/AddFeedback")
public class AddFeedBack extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddFeedBack() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String CarModel = request.getParameter("CarModel");
		String BookingId = request.getParameter("BookingId");
		String Description = request.getParameter("Description");

		Feedback feedback = new Feedback(CarModel, BookingId, Description);
		AddFeedBackDao FDao = new AddFeedBackDao();

		if (FDao.addFeedback(feedback)) {
			/**
			 * Redirects to Home Page
			 */
			response.sendRedirect("Home.jsp");
		} else {
			response.sendRedirect("Home.jsp");

		}

	}
}