package mapper;

import java.sql.ResultSet;

import model.Food_Store_Model;

public class Food_Store_Mapper implements RowMapper<Food_Store_Model>{

	@Override
	public Food_Store_Model mapRow(ResultSet rs) {
		try {
			Food_Store_Model food = new Food_Store_Model();
			food.setIdFood(rs.getString("IDFood"));
			food.setName_(rs.getString("Name_"));
			food.setPrice(rs.getInt("Price"));
			food.setStoreName(rs.getString("StoreName"));
			food.setImage(rs.getString("Image"));
			return food;
		} catch (Exception e) {
			return null;
		}
	}

}
