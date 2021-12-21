package model;
import java.sql.Timestamp;	

public class FoodModel extends AbstractModel<FoodModel>{
	private String IDFood;
	private String Name_;
	private Integer Price;
	private String Described;
	private Timestamp DateAdded;
	private Integer Buy;
	private String IDStore;
	private String IdCategory;
	private String Image;
	public String getIDFood() {
		return IDFood;
	}
	public void setIDFood(String iDFood) {
		IDFood = iDFood;
	}
	public String getName_() {
		return Name_;
	}
	public void setName_(String name_) {
		Name_ = name_;
	}
	public Integer getPrice() {
		return Price;
	}
	public void setPrice(Integer price) {
		Price = price;
	}
	public String getDescribed() {
		return Described;
	}
	public void setDescribed(String described) {
		Described = described;
	}
	public Timestamp getDateAdded() {
		return DateAdded;
	}
	public void setDateAdded(Timestamp dateAdded) {
		DateAdded = dateAdded;
	}
	public Integer getBuy() {
		return Buy;
	}
	public void setBuy(Integer buy) {
		Buy = buy;
	}
	public String getIDStore() {
		return IDStore;
	}
	public void setIDStore(String iDStore) {
		IDStore = iDStore;
	}
	public String getIdCategory() {
		return IdCategory;
	}
	public void setIdCategory(String idCategory) {
		IdCategory = idCategory;
	}
	public String getImage() {
		return Image;
	}
	public void setImage(String image) {
		Image = image;
	}
	
	
}
