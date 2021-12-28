package model;
import java.sql.Timestamp;	

public class HistoryModel extends AbstractModel<HistoryModel>{

	private String nameFood;
	private Integer quantity;
	private Integer price;
	private String nameStore;
	private Timestamp dateAdded;
	
	public String getNameFood() {
		return nameFood;
	}
	public void setNameFood(String nameFood) {
		this.nameFood = nameFood;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getNameStore() {
		return nameStore;
	}
	public void setNameStore(String nameStore) {
		this.nameStore = nameStore;
	}
	public Timestamp getDateAdded() {
		return dateAdded;
	}
	public void setDateAdded(Timestamp dateAdded) {
		this.dateAdded = dateAdded;
	}

	
}
