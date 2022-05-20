package Model;

/**
 * 
 Booking class
 *
 */

public class Booking {
	private String Email;
	private String Vehicle;
	private String Phone;
	private String PickLocation;
	private String Destination;
	private String Date;
	private String Hour;
	private String Min;
	private String Format;
	

	public Booking(String phone) {
		super();
		Phone = phone;
	}



	public Booking(String email, String vehicle, String phone, String pickLocation, String destination, String date,
			String hour, String min, String format) {
		super();
		Email = email;
		Vehicle = vehicle;
		Phone = phone;
		PickLocation = pickLocation;
		Destination = destination;
		Date = date;
		Hour = hour;
		Min = min;
		Format = format;
	}

	

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getVehicle() {
		return Vehicle;
	}

	public void setVehicle(String vehicle) {
		Vehicle = vehicle;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

	public String getPickLocation() {
		return PickLocation;
	}

	public void setPickLocation(String pickLocation) {
		PickLocation = pickLocation;
	}

	public String getDestination() {
		return Destination;
	}

	public void setDestination(String destination) {
		Destination = destination;
	}

	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		Date = date;
	}

	public String getHour() {
		return Hour;
	}

	public void setHour(String hour) {
		Hour = hour;
	}

	public String getMin() {
		return Min;
	}

	public void setMin(String min) {
		Min = min;
	}

	public String getFormat() {
		return Format;
	}

	public void setFormat(String format) {
		Format = format;
	}

}