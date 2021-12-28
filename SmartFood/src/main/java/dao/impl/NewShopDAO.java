package dao.impl;

import java.util.List;

import dao.IAdminDAO;
import dao.ICustomerDAO;
import dao.INewShopDAO;
import mapper.AdminMapper;
import mapper.CustomerMapper;
import mapper.NewShopMapper;
import model.AdminModel;
import model.CustomerModel;
import model.NewShopModel;

public class NewShopDAO extends AbstractDAO<NewShopModel> implements INewShopDAO{

	@Override
	public void addNew(String name, String phone) {
		String sql = "insert into newshop(StoreName,Phone) values(?,?)";
		update(sql, name, phone);
	}

	@Override
	public List<NewShopModel> getAll() {
		String sql = "SELECT * FROM newshop";
		return query(sql, new NewShopMapper());
	}

	@Override
	public void deleteNew(int id) {
		String sql = "delete from newshop where ID = ?";
		update(sql, id);
	}


}
