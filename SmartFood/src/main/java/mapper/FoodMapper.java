package mapper;

import java.sql.ResultSet;

import model.FoodModel;

public class FoodMapper implements RowMapper<FoodModel>{

	@Override
	public FoodModel mapRow(ResultSet rs) {
		try {
			FoodModel food = new FoodModel();
			food.setIDFood(rs.getString("IDFood"));
			food.setName_(rs.getString("Name_"));
			food.setPrice(rs.getInt("Price"));
			food.setDescribed(rs.getString("Described"));
			food.setDateAdded(rs.getTimestamp("DateAdded"));
			food.setBuy(rs.getInt("Buy"));
			food.setIDStore(rs.getString("IDStore"));
			food.setIdCategory(rs.getString("IdCategory"));
			return food;
		} catch (Exception e) {
			return null;
		}
	}

}
