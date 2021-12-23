package model;

import java.sql.Timestamp;

public class BillModel {
	private Integer iDBill;
	private Timestamp dateCreated;
	private Integer iDCus;
	private Integer status;
	
	public Integer getiDBill() {
		return iDBill;
	}
	public void setiDBill(Integer iDBill) {
		this.iDBill = iDBill;
	}
	public Timestamp getDateCreated() {
		return dateCreated;
	}
	public void setDateCreated(Timestamp dateCreated) {
		this.dateCreated = dateCreated;
	}
	public Integer getiDCus() {
		return iDCus;
	}
	public void setiDCus(Integer iDCus) {
		this.iDCus = iDCus;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}


	
}
