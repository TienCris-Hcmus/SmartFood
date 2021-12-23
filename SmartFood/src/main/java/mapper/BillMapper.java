package mapper;

import java.sql.ResultSet;

import model.BillModel;

public class BillMapper implements RowMapper<BillModel>{

	@Override
	public BillModel mapRow(ResultSet rs) {
		try {
			BillModel bill = new BillModel();
			bill.setiDBill(rs.getInt("IDBill"));
			bill.setDateCreated(rs.getTimestamp("DateCreated"));
			bill.setStatus(rs.getInt("Status"));
			bill.setiDCus(rs.getInt("IDCus"));
			return bill;
		} catch (Exception e) {
			return null;
		}
	}

}
