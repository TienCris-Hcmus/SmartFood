package dao.impl;

import java.util.List;

import dao.IAdminDAO;
import dao.ICustomerDAO;
import dao.IHistoryDAO;
import mapper.AdminMapper;
import mapper.CustomerMapper;
import mapper.HistoryMapper;
import model.AdminModel;
import model.CustomerModel;
import model.HistoryModel;

public class HistoryDAO extends AbstractDAO<HistoryModel> implements IHistoryDAO{

	@Override
	public List<HistoryModel> findAll(int idCus) {
		String sql = "select f.Name_, d.Quantity, f.Price, s.StoreName, b.DateCreated from store s, food f, bill b, desbill d where b.IDBill = d.IDBill and b.Status = 1 and b.IDCus=? and d.IDFood = f.IDFood and f.IDStore = s.IDStore";
		return query(sql, new HistoryMapper(), idCus);
	}

}
