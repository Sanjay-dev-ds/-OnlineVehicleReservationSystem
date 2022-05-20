package Service;


import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.AddBookingDao;
import Model.Booking;

/**
 * Servlet implementation class  AddBooking
 */
@WebServlet("/AddBooking")
public class AddBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddBooking() {
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

		String Email  = request.getParameter("Email");
		String Vehicle = request.getParameter("Vehicle");
		String Phone = request.getParameter("Phone");
		String PickLocation = request.getParameter("PickLocation");
		String Destination = request.getParameter("Destination");
		String Date= request.getParameter("Date");
		String Hour= request.getParameter("Hour");
		String Min= request.getParameter("Min");
		String Format= request.getParameter("Format");
		
		Booking booking =new Booking(Email, Vehicle, Phone, PickLocation, Destination,  Date, Hour, Min, Format);
			AddBookingDao BDao = new AddBookingDao();

		if (BDao.addBooking(booking)) {
			/**
			 * Redirects to Home Page
			 */
			response.sendRedirect("Home.jsp");
		} else {
			/**
			 * Redirects to Login Page
			 */
			response.sendRedirect("login.jsp");
		}

	}

}