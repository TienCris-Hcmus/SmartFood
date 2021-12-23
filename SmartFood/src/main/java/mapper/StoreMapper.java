package mapper;

import java.sql.ResultSet;

import model.StoreModel;

public class StoreMapper implements RowMapper<StoreModel>{

	@Override
	public StoreModel mapRow(ResultSet rs) {
		try {
			StoreModel store = new StoreModel();
			store.setIDStore(rs.getInt("IDStore"));
			store.setStoreName(rs.getString("StoreName"));
			store.setAddress_(rs.getString("Address_"));
			store.setPhone(rs.getString("Phone"));
			store.setOpeningTime(rs.getString("OpeningTime"));
			store.setClosingTime(rs.getString("ClosingTime"));
			store.setVoucher(rs.getInt("Voucher"));
			return store;
		} catch (Exception e) {
			return null;
		}
	}

}
