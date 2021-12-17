package mapper;

import java.sql.ResultSet;

import model.BillModel;

public class BillMapper implements RowMapper<BillModel>{

	@Override
	public BillModel mapRow(ResultSet rs) {
		try {
			BillModel bill = new BillModel();
			bill.setIDBill(rs.getString("IDBill"));
			bill.setDateCreated(rs.getTimestamp("DateCreated"));
			bill.setIDStore(rs.getString("IDStore"));
			bill.setTotal(rs.getInt("Total"));
			bill.setIDCus(rs.getString("IDCus"));
			return bill;
		} catch (Exception e) {
			return null;
		}
	}

}
