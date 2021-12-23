package model;

public class CartDetailModel extends AbstractModel<CartDetailModel> {
	private Integer iDFood;
	private Integer iDBill;
	private String name_;
	private Integer price;
	private String storeName;
	private Integer quantity;
	private String nameCus;
	private String phone;
	private String address_;
	private String image;
	
	
	public Integer getiDFood() {
		return iDFood;
	}
	public void setiDFood(Integer iDFood) {
		this.iDFood = iDFood;
	}
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
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public String getNameCus() {
		return nameCus;
	}
	public void setNameCus(String nameCus) {
		this.nameCus = nameCus;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress_() {
		return address_;
	}
	public void setAddress_(String address_) {
		this.address_ = address_;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Integer getiDBill() {
		return iDBill;
	}
	public void setiDBill(Integer iDBill) {
		this.iDBill = iDBill;
	}
}
