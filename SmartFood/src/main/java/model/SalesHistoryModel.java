package model;

import java.sql.Timestamp;

public class SalesHistoryModel {
	private String IDStore;
	private Timestamp From_;
	private Integer TotalQuantitySold;
	
	public String getIDStore() {
		return IDStore;
	}
	public void setIDStore(String iDStore) {
		IDStore = iDStore;
	}
	public Timestamp getFrom_() {
		return From_;
	}
	public void setFrom_(Timestamp from_) {
		this.From_ = from_;
	}

	public Integer getTotalQuantitySold() {
		return TotalQuantitySold;
	}
	public void setTotalQuantitySold(Integer totalQuantitySold) {
		TotalQuantitySold = totalQuantitySold;
	}
	
	
}
