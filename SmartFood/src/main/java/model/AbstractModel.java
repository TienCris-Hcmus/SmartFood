package model;

import java.util.ArrayList;
import java.util.List;

public class AbstractModel<T> {
	private Integer page; //Trang hiện tại đang đứng
	private Integer maxPageItem; //Số phần tử max trên 1 trang
	private Integer totalPage; //Tổng số trang
	private Integer totalItem; //Tổng số phần tử 1 trang hiện tại
	private String 	action;
	private String 	search;
	private List<T> listResult = new ArrayList<>();
	
	
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	
	
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getMaxPageItem() {
		return maxPageItem;
	}
	public void setMaxPageItem(Integer maxPageItem) {
		this.maxPageItem = maxPageItem;
	}
	public Integer getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}
	public Integer getTotalItem() {
		return totalItem;
	}
	public void setTotalItem(Integer totalItem) {
		this.totalItem = totalItem;
	}
	public List<T> getListResult() {
		return listResult;
	}
	public void setListResult(List<T> listResult) {
		this.listResult = listResult;
	}
	public String getAction() {
		return action;
	}
	public void setAction(String action) {
		this.action = action;
	}

}
