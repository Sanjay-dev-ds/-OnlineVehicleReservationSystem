package Model;


/**
 * 
 Booking class (Parent Class)
 *
 */


public class Customer {
	protected int id;
	protected String FirstName;
	protected String LastName;
	protected String PhoneNumber;
	protected String Address;
	protected String Email;
	protected String Gender;
	protected String Password;
	
	
	

	public Customer() {
		super();
	}

	public Customer(String email, String password) {
		super();
		Email = email;
		Password = password;
	}
	
	


	public Customer(String firstName, String lastName, String phoneNumber, String address, String email,
			String gender) {
		super();
		FirstName = firstName;
		LastName = lastName;
		PhoneNumber = phoneNumber;
		Address = address;
		Email = email;
		Gender = gender;
	}

	public Customer(String firstName, String lastName, String phoneNumber, String address, String email, String gender,
			String password) {
		super();
		FirstName = firstName;
		LastName = lastName;
		PhoneNumber = phoneNumber;
		Address = address;
		Email = email;
		Gender = gender;
		Password = password;
	}

	public Customer(int id, String firstName, String lastName, String phoneNumber, String address, String email,
			String gender, String password) {
		super();
		this.id = id;
		FirstName = firstName;
		LastName = lastName;
		PhoneNumber = phoneNumber;
		Address = address;
		Email = email;
		Gender = gender;
		Password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return FirstName;
	}

	public void setFirstName(String firstName) {
		FirstName = firstName;
	}

	public String getLastName() {
		return LastName;
	}

	public void setLastName(String lastName) {
		LastName = lastName;
	}

	public String getPhoneNumber() {
		return PhoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		PhoneNumber = phoneNumber;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}
	
	
	
	
	
	
	




	
}
