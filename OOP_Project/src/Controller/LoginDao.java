package Controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.LoginModel;

public class LoginDao {
	
	private String dbUrl = "jdbc:mysql://localhost:3306/online_vehicle";
	private String dbUname = "root";
	private String dbPassword = "";
	private String dbDriver = "com.mysql.cj.jdbc.Driver";
	
	public void loadDriver(String dbDriver)
	{
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
		
			e.printStackTrace();
		}
	}
	
	public Connection getConnection()
	{
		Connection con = null;
		try {
			con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		return con;
	}
	
	
	public boolean validateLogin(LoginModel customer)
	{   
		boolean val = false;
		loadDriver(dbDriver);
		Connection con = getConnection();
		String sql = "select * from customer where Email = ? and Password = ?";
		
		PreparedStatement ps;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, customer.getEmail());
			ps.setString(2, customer.getPassword());
			ResultSet rs = ps.executeQuery();
			val = rs.next();
	
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		}
		return val;
	}

}

