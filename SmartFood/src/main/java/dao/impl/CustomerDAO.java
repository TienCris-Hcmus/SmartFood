package dao.impl;

import java.util.List;

import dao.ICustomerDAO;
import mapper.CustomerMapper;
import model.CustomerModel;

public class CustomerDAO extends AbstractDAO<CustomerModel> implements ICustomerDAO{

	@Override
	public CustomerModel findLogin(String userName, String password) {
		StringBuilder sql = new StringBuilder("SELECT * FROM customer");
		sql.append(" where Username=? and Password_=? and Status_='Enable'");
		List<CustomerModel> users = query(sql.toString(), new CustomerMapper(), userName, password);
		return users.isEmpty() ? null : users.get(0);
	}
	
}
