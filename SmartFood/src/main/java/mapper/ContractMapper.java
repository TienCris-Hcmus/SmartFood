package mapper;

import java.sql.ResultSet;

import model.ContractModel;

public class ContractMapper implements RowMapper<ContractModel>{

	@Override
	public ContractModel mapRow(ResultSet rs) {
		try {
			ContractModel contract = new ContractModel();
			contract.setIDCon(rs.getString("IDCon"));
			contract.setIDStore(rs.getString("IDStore"));
			contract.setDateCreated(rs.getTimestamp("DateCreated"));
			contract.setDateEnd(rs.getTimestamp("DateEnd"));
			contract.setStatus_(rs.getString("Status_"));
			return contract;
		} catch (Exception e) {
			return null;
		}
	}

}
