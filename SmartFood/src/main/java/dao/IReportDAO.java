package dao;

import java.util.List;

import model.ReportModel;

public interface IReportDAO extends GenericDAO<ReportModel>{
	List<ReportModel> findAll();
	ReportModel findOne(int id);
	void update(int id);
}
