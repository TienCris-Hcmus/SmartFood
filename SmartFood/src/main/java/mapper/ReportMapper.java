package mapper;

import java.sql.ResultSet;

import model.ReportModel;
import model.StoreModel;

public class ReportMapper implements RowMapper<ReportModel>{

	@Override
	public ReportModel mapRow(ResultSet rs) {
		try {
			ReportModel model = new ReportModel();
			model.setId(rs.getInt("ID"));
			model.setTitle(rs.getString("Title"));
			model.setContent(rs.getString("Content"));
			model.setIdCus(rs.getInt("IDCus"));
			model.setStatus(rs.getString("Status"));
			return model;
		} catch (Exception e) {
			return null;
		}
	}

}
