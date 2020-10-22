package site.bluemoon.dto;

public class AdminUserReservation {
	private User user;
	private OceanReservationDTO ocean;
	
	public AdminUserReservation() {
		// TODO Auto-generated constructor stub
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public OceanReservationDTO getOcean() {
		return ocean;
	}

	public void setOcean(OceanReservationDTO ocean) {
		this.ocean = ocean;
	}
}
