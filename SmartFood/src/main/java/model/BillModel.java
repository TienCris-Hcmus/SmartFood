package model;

import java.sql.Timestamp;

public class BillModel {
	private String IDBill;
	private Timestamp DateCreated;
	private String IDStore;
	private Integer Total;
	private String IDCus;
	public String getIDBill() {
		return IDBill;
	}
	public void setIDBill(String iDBill) {
		IDBill = iDBill;
	}
	public Timestamp getDateCreated() {
		return DateCreated;
	}
	public void setDateCreated(Timestamp dateCreated) {
		DateCreated = dateCreated;
	}
	public String getIDStore() {
		return IDStore;
	}
	public void setIDStore(String iDStore) {
		IDStore = iDStore;
	}
	public Integer getTotal() {
		return Total;
	}
	public void setTotal(Integer total) {
		Total = total;
	}
	public String getIDCus() {
		return IDCus;
	}
	public void setIDCus(String iDCus) {
		IDCus = iDCus;
	}
	
	
}
