package mapper;

import java.sql.ResultSet;

import model.CustomerModel;

public class CustomerMapper implements RowMapper<CustomerModel>{

	@Override
	public CustomerModel mapRow(ResultSet rs) {
		try {
			CustomerModel customer = new CustomerModel();
			customer.setIdCus(rs.getString("IDCus"));
			customer.setNameCus(rs.getString("NameCus"));
			customer.setPhone(rs.getString("Phone"));
			customer.setUsername(rs.getString("Username"));
			customer.setPassword(rs.getString("Password_"));
			customer.setAddress_(rs.getString("Address_"));
			customer.setEmail(rs.getString("Email"));
			customer.setStatus_(rs.getString("Status_"));
			return customer;
		} catch (Exception e) {
			return null;
		}
	}

}
