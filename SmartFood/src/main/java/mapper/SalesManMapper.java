package mapper;

import java.sql.ResultSet;

import model.SalesManModel;

public class SalesManMapper implements RowMapper<SalesManModel>{

	@Override
	public SalesManModel mapRow(ResultSet rs) {
		try {
			SalesManModel salesman = new SalesManModel();
			salesman.setIDSa(rs.getInt("IDSa"));
			salesman.setNameSa(rs.getString("NameSa"));
			salesman.setPhone(rs.getString("Phone"));
			salesman.setUsername(rs.getString("Username"));
			salesman.setPassword_(rs.getString("Password_"));
			salesman.setAddress_(rs.getString("Address_"));
			salesman.setEmail(rs.getString("Email"));
			salesman.setStatus_(rs.getString("Status_"));
			salesman.setIDStore(rs.getInt("IDStore"));
			return salesman;
		} catch (Exception e) {
			return null;
		}
	}

}
