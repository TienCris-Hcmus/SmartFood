package model;

public class ReportModel extends AbstractModel<ReportModel>{
	private Integer id;
	private String title;
	private String content;
	private Integer idCus;
	private String status;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getIdCus() {
		return idCus;
	}
	public void setIdCus(Integer idCus) {
		this.idCus = idCus;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}


	
}
