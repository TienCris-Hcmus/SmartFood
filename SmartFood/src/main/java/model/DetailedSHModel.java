package model;

import java.sql.Timestamp;

public class DetailedSHModel {
	private String IDStore;
	private String IDFood;
	private Timestamp PurchaseDate;
	private Integer Quantity;
	private String IDCus;
	public String getIDStore() {
		return IDStore;
	}
	public void setIDStore(String iDStore) {
		IDStore = iDStore;
	}
	public String getIDFood() {
		return IDFood;
	}
	public void setIDFood(String iDFood) {
		IDFood = iDFood;
	}
	public Timestamp getPurchaseDate() {
		return PurchaseDate;
	}
	public void setPurchaseDate(Timestamp purchaseDate) {
		PurchaseDate = purchaseDate;
	}
	public Integer getQuantity() {
		return Quantity;
	}
	public void setQuantity(Integer quantity) {
		Quantity = quantity;
	}
	public String getIDCus() {
		return IDCus;
	}
	public void setIDCus(String iDCus) {
		IDCus = iDCus;
	}
	
	
}
