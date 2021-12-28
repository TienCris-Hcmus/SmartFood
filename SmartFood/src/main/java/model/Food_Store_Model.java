package model;

public class Food_Store_Model extends AbstractModel<Food_Store_Model>{
	private Integer idFood;
	private String name_;
	private String describe;
	private Integer price;
	private String image;
	private String storeName;
	private Integer idShop;
	
	

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
	public Integer getIdFood() {
		return idFood;
	}
	public void setIdFood(Integer idFood) {
		this.idFood = idFood;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	public Integer getIdShop() {
		return idShop;
	}
	public void setIdShop(Integer idShop) {
		this.idShop = idShop;
	}

	
}
