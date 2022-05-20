package Controller;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Model.Booking;

public class AddBookingDao {

	private String dbUrl = "jdbc:mysql://localhost:3306/online_vehicle";
	private String dbUname = "root";
	private String dbPassword = "";
	private String dbDriver = "com.mysql.cj.jdbc.Driver";

	public void loadDriver(String dbDriver) {
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		}
	}

	public Connection getConnection() {
		Connection con = null;
		try {
			con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return con;
	}

	public boolean addBooking(Booking booking) {
		loadDriver(dbDriver);
		Connection con = getConnection();
		boolean result = false;
		String sql = "insert into Booking values(?,?,?,?,?,?,?,?,?)";

		PreparedStatement ps;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, booking.getEmail());
			ps.setString(2, booking.getVehicle());
			ps.setString(3, booking.getPhone());
			ps.setString(4, booking.getPickLocation());
			ps.setString(5, booking.getDestination());
			ps.setString(6, booking.getDate());
			ps.setString(7, booking.getHour());
			ps.setString(8, booking.getMin());
			ps.setString(9, booking.getFormat());
			ps.executeUpdate();
			result = true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		return result;
	}


}
