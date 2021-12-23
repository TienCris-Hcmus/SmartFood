package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;
import dao.IBillDAO;
import mapper.BillMapper;
import model.BillModel;
import model.CartDetailModel;

public class BillDAO extends AbstractDAO<BillModel> implements IBillDAO {

	@Override
	public void update(int idCus, List<CartDetailModel> cartList) {
		// Get idBill
		String getIdBill = "select * from Bill where IDCus = ? and Status = 0";
		List<BillModel> list = query(getIdBill, new BillMapper(), idCus);
		int idBill = list.isEmpty() ? -1 : list.get(0).getiDBill();
		if (idBill == -1)
			return;

		Connection connection = null;
		PreparedStatement stament = null;
		try {
			connection = getConnection();
			connection.setAutoCommit(false);
			// Update Status
			String updateSql = "update Bill set Status = 1 where IDBill = ?";
			stament = connection.prepareStatement(updateSql);
			setParameter(stament, idBill);
			stament.executeUpdate();
			stament.close();
			// Add new bill
			String insertSql = "insert into Bill(IDCus, Status) values(?,0)";
			stament = connection.prepareStatement(insertSql);
			setParameter(stament, idCus);
			stament.executeUpdate();
			stament.close();
			// Update bought food quantity
			String foodSql = "update food set Buy = Buy + 1 where IDFood = ?";
			for (CartDetailModel model : cartList) {
				stament = connection.prepareStatement(foodSql);
				setParameter(stament, model.getiDFood());
				stament.executeUpdate();
				stament.close();
			}
			connection.commit();
		} catch (Exception e) {
			if (connection != null) {
				try {
					connection.rollback();
				} catch (Exception e2) {
				}
			}
		} finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (stament != null) {
					stament.close();
				}
			} catch (Exception e3) {
			}
		}

	}

}
