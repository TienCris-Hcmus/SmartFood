package mapper;

import java.sql.ResultSet;

import model.FoodModel;
import model.HistoryModel;

public class HistoryMapper implements RowMapper<HistoryModel>{

	@Override
	public HistoryModel mapRow(ResultSet rs) {
		try {
			HistoryModel food = new HistoryModel();
			food.setNameFood(rs.getString("Name_"));
			food.setQuantity(rs.getInt("Quantity"));
			food.setPrice(rs.getInt("Price"));
			food.setNameStore(rs.getString("StoreName"));
			food.setDateAdded(rs.getTimestamp("DateCreated"));
			return food;
		} catch (Exception e) {
			return null;
		}
	}

}
