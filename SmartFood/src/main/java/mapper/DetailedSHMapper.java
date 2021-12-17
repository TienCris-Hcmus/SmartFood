package mapper;

import java.sql.ResultSet;

import model.DetailedSHModel;

public class DetailedSHMapper implements RowMapper<DetailedSHModel>{

	@Override
	public DetailedSHModel mapRow(ResultSet rs) {
		try {
			DetailedSHModel detailedSH = new DetailedSHModel();
			detailedSH.setIDStore(rs.getString("IDStore"));
			detailedSH.setIDFood(rs.getString("IDFood"));
			detailedSH.setPurchaseDate(rs.getTimestamp("PurchaseDate"));
			detailedSH.setQuantity(rs.getInt("Quantity"));
			detailedSH.setIDCus(rs.getString("IDCus"));
			return detailedSH;
		} catch (Exception e) {
			return null;
		}
	}

}
