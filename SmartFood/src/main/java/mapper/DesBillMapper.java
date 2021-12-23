package mapper;

import java.sql.ResultSet;

import model.DesBillModel;

public class DesBillMapper implements RowMapper<DesBillModel>{

	@Override
	public DesBillModel mapRow(ResultSet rs) {
		try {
			DesBillModel desbill = new DesBillModel();
			desbill.setIDBill(rs.getInt("IDBill"));
			desbill.setIDFood(rs.getInt("IDFood"));
			desbill.setQuantity(rs.getInt("Quantity"));
			desbill.setVoucher(rs.getInt("Voucher"));
			return desbill;
		} catch (Exception e) {
			return null;
		}
	}

}
