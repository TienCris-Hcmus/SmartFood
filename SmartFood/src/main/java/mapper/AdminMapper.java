package mapper;

import java.sql.ResultSet;

import model.AdminModel;

public class AdminMapper implements RowMapper<AdminModel>{

	@Override
	public AdminModel mapRow(ResultSet rs) {
		try {
			AdminModel admin = new AdminModel();
			admin.setiDA(rs.getInt("IDA"));
			admin.setNameAd(rs.getString("NameAd"));
			admin.setPhone(rs.getString("Phone"));
			admin.setUsername(rs.getString("Username"));
			admin.setPassword_(rs.getString("Password_"));
			admin.setAddress_(rs.getString("Address_"));
			admin.setEmail(rs.getString("Email"));
			admin.setStatus_(rs.getString("Status_"));
			return admin;
		} catch (Exception e) {
			return null;
		}
	}

}
