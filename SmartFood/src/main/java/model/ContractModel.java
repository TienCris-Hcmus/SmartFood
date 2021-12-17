package model;

import java.sql.Timestamp;

public class ContractModel {
	private String IDCon;
	private String IDStore;
	private Timestamp DateCreated;
	private Timestamp DateEnd;
	private String Status_;
	public String getIDCon() {
		return IDCon;
	}
	public void setIDCon(String iDCon) {
		IDCon = iDCon;
	}
	public String getIDStore() {
		return IDStore;
	}
	public void setIDStore(String iDStore) {
		IDStore = iDStore;
	}
	public Timestamp getDateCreated() {
		return DateCreated;
	}
	public void setDateCreated(Timestamp dateCreated) {
		DateCreated = dateCreated;
	}
	public String getStatus_() {
		return Status_;
	}
	public void setStatus_(String status_) {
		Status_ = status_;
	}
	public Timestamp getDateEnd() {
		return DateEnd;
	}
	public void setDateEnd(Timestamp dateEnd) {
		DateEnd = dateEnd;
	}
	
	
}
