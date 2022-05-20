package Model;


public class LoginModel extends Customer {
	
	
	
	public LoginModel() {
		super();
	}


	public LoginModel(String email, String password) {
		super(email,password);
	
	}


	public String getEmail() {
		return Email;
	}


	public void setEmail(String email) {
		Email = email;
	}


	public String getPassword() {
		return Password;
	}


	public void setPassword(String password) {
		Password = password;
	}
	
	
	
	
	
	
	
}
