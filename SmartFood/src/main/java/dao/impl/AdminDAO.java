package dao.impl;

import java.util.List;

import dao.IAdminDAO;
import dao.ICustomerDAO;
import mapper.AdminMapper;
import mapper.CustomerMapper;
import model.AdminModel;
import model.CustomerModel;

public class AdminDAO extends AbstractDAO<AdminModel> implements IAdminDAO{

	@Override
	public AdminModel findLogin(String userName, String password) {
		StringBuilder sql = new StringBuilder("select * from admin_");
		sql.append(" where Username=? and Password_=? and Status_ = 'Enable'");
		List<AdminModel> users = query(sql.toString(), new AdminMapper(), userName, password);
		return users.isEmpty() ? null : users.get(0);
	}
}
