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

	@Override
	public void update(CustomerModel newModel) {
		StringBuilder sql = new StringBuilder("update customer set Phone=?, Email=?, Address_=?");
		if(newModel.getPassword()!=null && newModel.getPassword()!="") {
			sql.append(", Password_=?");
		}
		sql.append(" where IDCus=?");
		sql.append("");
		if(newModel.getPassword()!=null && newModel.getPassword()!="") {
			update(sql.toString(), newModel.getPhone(), newModel.getEmail(), newModel.getAddress_(), newModel.getPassword(), newModel.getIdCus());
		}else {
			update(sql.toString(), newModel.getPhone(), newModel.getEmail(), newModel.getAddress_(), newModel.getIdCus());
		}
		
	}

	@Override
	public CustomerModel findLogin(Integer id) {
		StringBuilder sql = new StringBuilder("SELECT * FROM customer");
		sql.append(" where IDCus=? and Status_='Enable'");
		List<CustomerModel> users = query(sql.toString(), new CustomerMapper(), id);
		return users.isEmpty() ? null : users.get(0);
	}



	
}
