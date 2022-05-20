
package Service;


import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.DeleteBookingDao;
import Model.Booking;

/**
 * Servlet implementation class DeleteBooking
 */
@WebServlet("/DeleteBooking")
public class DeleteBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeleteBooking() {
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

	
		String PhoneNumber = request.getParameter("PhoneNumber");
		Booking booking =new Booking( PhoneNumber);
		DeleteBookingDao DDao = new DeleteBookingDao();

		
		if (DDao.deleteBooking(booking)) {
			/**
			 * Redirects to Booking Delete Page
			 */
			response.sendRedirect("BookingDelete.jsp");
		} else {
			/**
			 * Redirects to Home Page
			 */
			response.sendRedirect("Home.jsp");
		}

	}

}
