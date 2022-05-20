package Controller;


import java.sql.*;

import Model.Customer;


public class EditProfileDao {

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

	public boolean saveUser(Customer customer) {
		loadDriver(dbDriver);
		boolean set = false;
		try {

			Connection con = getConnection();
			Statement st = con.createStatement();
	
			String sql ="update customer set Address = '"+ customer.getAddress()+"', FirstName = '"+ customer.getFirstName()+"' ,LastName = '"+ customer.getLastName()+"' ,PhoneNumber = '"+ customer.getPhoneNumber()+"' ,Gender = '"+ customer.getGender()+"'   WHERE Email = '"+customer.getEmail()+"'  ";
		
					
					
			st.executeUpdate(sql);
			set = true;

		} catch (

		SQLException e) {

			e.printStackTrace();

		}
		return set;
	}

}
