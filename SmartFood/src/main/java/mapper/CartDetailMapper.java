package mapper;

import java.sql.ResultSet;

import model.CartDetailModel;

public class CartDetailMapper implements RowMapper<CartDetailModel>{

	@Override
	public CartDetailModel mapRow(ResultSet rs) {
		try {
			CartDetailModel model = new CartDetailModel();
			model.setiDFood(rs.getInt("IDFood"));
			model.setiDBill(rs.getInt("IDBill"));
			model.setName_(rs.getString("Name_"));
			model.setPrice(rs.getInt("Price"));
			model.setStoreName(rs.getString("StoreName"));
			model.setQuantity(rs.getInt("Quantity"));
			model.setNameCus(rs.getString("NameCus"));
			model.setPhone(rs.getString("phone"));
			model.setAddress_(rs.getString("Address_"));
			model.setImage(rs.getString("Image"));
			return model;
		} catch (Exception e) {
			return null;
		}
	}

}
