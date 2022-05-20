package Model;

public class Feedback {
	
	private String CarModel;
	private String BookingId;
	private String Description;
	
	public Feedback(String carModel, String bookingId, String description) {
		super();
		CarModel = carModel;
		BookingId = bookingId;
		Description = description;
	}

	public String getCarModel() {
		return CarModel;
	}

	public void setCarModel(String carModel) {
		CarModel = carModel;
	}

	public String getBookingId() {
		return BookingId;
	}

	public void setBookingId(String bookingId) {
		BookingId = bookingId;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}
	
	
	
	
	
	
	
	
}