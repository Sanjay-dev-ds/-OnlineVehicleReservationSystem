package Controller;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Model.Feedback;

public class AddFeedBackDao {

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

	public boolean addFeedback(Feedback feedback) {
		loadDriver(dbDriver);
		Connection con = getConnection();
		boolean result = false;
		String sql = "insert into Feedback values(?,?,?)";

		PreparedStatement ps;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, feedback.getCarModel());
			ps.setString(2, feedback.getBookingId());
			ps.setString(3, feedback.getDescription());
			ps.executeUpdate();
			result = true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		return result;
	}


}
