package mapper;

import java.sql.ResultSet;

import model.AdminModel;
import model.NewShopModel;

public class NewShopMapper implements RowMapper<NewShopModel>{

	@Override
	public NewShopModel mapRow(ResultSet rs) {
		try {
			NewShopModel model = new NewShopModel();
			model.setId(rs.getInt("ID"));
			model.setStoreName(rs.getString("StoreName"));
			model.setPhone(rs.getString("Phone"));
			return model;
		} catch (Exception e) {
			return null;
		}
	}

}
