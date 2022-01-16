package dao.impl;

import java.util.List;

import dao.IFoodDAO;
import dao.IReportDAO;
import mapper.FoodMapper;
import mapper.ReportMapper;
import model.FoodModel;
import model.ReportModel;

public class ReportDAO extends AbstractDAO<ReportModel> implements IReportDAO{

	@Override
	public List<ReportModel> findAll() {
		String sql = "select * from report where Status = 'Chưa xem' union distinct select * from report where status = 'Đã xem'";
		return query(sql, new ReportMapper());
	}

	@Override
	public ReportModel findOne(int id) {
		String sql = "SELECT * FROM report where ID = ?";
		List<ReportModel> list = query(sql, new ReportMapper(), id);
		return list.isEmpty() ? null : list.get(0);
	}

	@Override
	public void update(int id) {
		String sql = "update report set Status = N'Đã xem' where ID=?";
		update(sql, id);
	}

}
