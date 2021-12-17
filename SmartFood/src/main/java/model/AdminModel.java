package model;

public class AdminModel {
	private String IDA;
	private String NameAd;
	private String Phone;
	private String Username;
	private String Password_;
	private String Address_;
	private String Email;
	private String Status_;
	
	public String getIDA() {
		return IDA;
	}
	public void setIDA(String iDA) {
		IDA = iDA;
	}
	public String getNameAd() {
		return NameAd;
	}
	public void setNameAd(String nameAd) {
		NameAd = nameAd;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getPassword_() {
		return Password_;
	}
	public void setPassword_(String password_) {
		this.Password_ = password_;
	}
	public String getAddress_() {
		return Address_;
	}
	public void setAddress_(String address_) {
		Address_ = address_;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getStatus_() {
		return Status_;
	}
	public void setStatus_(String status_) {
		Status_ = status_;
	}
}
