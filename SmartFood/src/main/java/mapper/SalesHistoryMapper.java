package mapper;

import java.sql.ResultSet;

import model.SalesHistoryModel;

public class SalesHistoryMapper implements RowMapper<SalesHistoryModel>{

	@Override
	public SalesHistoryModel mapRow(ResultSet rs) {
		try {
			SalesHistoryModel admin = new SalesHistoryModel();
			admin.setIDStore(rs.getString("IDStore"));
			admin.setFrom_(rs.getTimestamp("From_"));
			admin.setTotalQuantitySold(rs.getInt("TotalQuantitySold"));
			return admin;
		} catch (Exception e) {
			return null;
		}
	}

}
