package model;

public class StoreModel {
	private Integer IDStore;
	private String StoreName;
	private String Address_;
	private String Phone;
	private String OpeningTime;
	private String ClosingTime;
	private Integer Voucher;


	public String getStoreName() {
		return StoreName;
	}
	public void setStoreName(String storeName) {
		StoreName = storeName;
	}
	public String getAddress_() {
		return Address_;
	}
	public void setAddress_(String address_) {
		Address_ = address_;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getOpeningTime() {
		return OpeningTime;
	}
	public void setOpeningTime(String openingTime) {
		OpeningTime = openingTime;
	}
	public String getClosingTime() {
		return ClosingTime;
	}
	public void setClosingTime(String closingTime) {
		ClosingTime = closingTime;
	}
	public Integer getVoucher() {
		return Voucher;
	}
	public void setVoucher(Integer voucher) {
		Voucher = voucher;
	}
	public Integer getIDStore() {
		return IDStore;
	}
	public void setIDStore(Integer iDStore) {
		IDStore = iDStore;
	}
	
	
}
