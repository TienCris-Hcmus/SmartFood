package mapper;

import java.sql.ResultSet;

import model.StoreDateModel;
import model.StoreModel;

public class StoreDateMapper implements RowMapper<StoreDateModel>{

	@Override
	public StoreDateModel mapRow(ResultSet rs) {
		try {
			StoreDateModel store = new StoreDateModel();
			store.setiDStore(rs.getInt("IDStore"));
			store.setStoreName(rs.getString("StoreName"));
			store.setAddress_(rs.getString("Address_"));
			store.setPhone(rs.getString("Phone"));
			store.setOpeningTime(rs.getString("OpeningTime"));
			store.setClosingTime(rs.getString("ClosingTime"));
			store.setVoucher(rs.getInt("Voucher"));
			store.setDateCreated(rs.getTimestamp("DateCreated"));
			return store;
		} catch (Exception e) {
			return null;
		}
	}

}
