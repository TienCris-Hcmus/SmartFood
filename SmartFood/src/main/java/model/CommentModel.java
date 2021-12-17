package model;

import java.sql.Timestamp;

public class CommentModel {
	private String IDCmt;
	private String IDFood;
	private Timestamp DateCraeted;
	private String Content;
	public String getIDCmt() {
		return IDCmt;
	}
	public void setIDCmt(String iDCmt) {
		IDCmt = iDCmt;
	}
	public String getIDFood() {
		return IDFood;
	}
	public void setIDFood(String iDFood) {
		IDFood = iDFood;
	}
	public Timestamp getDateCraeted() {
		return DateCraeted;
	}
	public void setDateCraeted(Timestamp dateCraeted) {
		DateCraeted = dateCraeted;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	
}
