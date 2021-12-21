package model;

public class Food_Store_Model extends AbstractModel<Food_Store_Model>{
	private String idFood;
	private String name_;
	private Integer price;
	private String image;
	private String storeName;
	

	public String getName_() {
		return name_;
	}
	public void setName_(String name_) {
		this.name_ = name_;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public String getIdFood() {
		return idFood;
	}
	public void setIdFood(String idFood) {
		this.idFood = idFood;
	}
	
	
}
