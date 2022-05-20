package Controller;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Model.Customer;

public class RegisterDao {
	
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
	
	
	public boolean saveUser(Customer customer)
	{
		loadDriver(dbDriver);
		Connection con = getConnection();
		String sql = "insert into customer (FirstName,LastName,PhoneNumber,Address,Email,Gender,Password)values(?,?,?,?,?,?,?)";
		boolean set = false;
		PreparedStatement ps;
		try {
		ps = con.prepareStatement(sql);
		ps.setString(1, customer.getFirstName());
		ps.setString(2, customer.getLastName());
		ps.setString(3, customer.getPhoneNumber());
		ps.setString(4, customer.getAddress());
		ps.setString(5, customer.getEmail());
		ps.setString(6, customer.getGender());
		ps.setString(7, customer.getPassword());
		ps.executeUpdate();
		 set = true;
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		}
		return set;
	}

}

