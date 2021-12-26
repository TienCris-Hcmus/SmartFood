package model;

import java.sql.Timestamp;

public class StoreDateModel extends AbstractModel<StoreDateModel> {
	private Integer iDStore;
	private String storeName;
	private String address_;
	private String phone;
	private String openingTime;
	private String closingTime;
	private Integer voucher;
	private Timestamp dateCreated;
	
	public Integer getiDStore() {
		return iDStore;
	}
	public void setiDStore(Integer iDStore) {
		this.iDStore = iDStore;
	}
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public String getAddress_() {
		return address_;
	}
	public void setAddress_(String address_) {
		this.address_ = address_;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getOpeningTime() {
		return openingTime;
	}
	public void setOpeningTime(String openingTime) {
		this.openingTime = openingTime;
	}
	public String getClosingTime() {
		return closingTime;
	}
	public void setClosingTime(String closingTime) {
		this.closingTime = closingTime;
	}
	public Integer getVoucher() {
		return voucher;
	}
	public void setVoucher(Integer voucher) {
		this.voucher = voucher;
	}
	public Timestamp getDateCreated() {
		return dateCreated;
	}
	public void setDateCreated(Timestamp dateCreated) {
		this.dateCreated = dateCreated;
	}


	
}
