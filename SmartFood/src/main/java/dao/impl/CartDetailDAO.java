package dao.impl;

import java.util.List;

import dao.ICartDetailDAO;
import mapper.CartDetailMapper;
import model.CartDetailModel;

public class CartDetailDAO extends AbstractDAO<CartDetailModel> implements ICartDetailDAO{

	@Override
	public List<CartDetailModel> findAll(int idCus) {
		StringBuilder sql = new StringBuilder("select f.IDFood, b.IDBill, f.Name_, f.Price, f.Image, st.StoreName, db.Quantity, cus.NameCus, cus.Address_, cus.Phone from store st, food f, customer cus, bill b, desbill db where cus.IDCus = b.IDCus and b.IDBill = db.IDBill and db.IDFood = f.IDFood and st.IDStore = f.IDStore and b.Status=0 and cus.IDCus=?");
		return query(sql.toString(), new CartDetailMapper(), idCus);
	}

	@Override
	public void delete(int idFood, int idBill) {
		String sql = "delete from desbill where IDBill =? and IDFood =?";
		update(sql, idBill, idFood);
	}

	@Override
	public void update(int idFood, int idBill, boolean add) {
		String sql = null;
		if(add == true) {
			sql = "update desbill set Quantity = Quantity + 1 where IDBill =? and IDFood=?";
		}else {
			sql = "update desbill set Quantity = Quantity - 1 where IDBill =? and IDFood=?";
		}
		update(sql, idBill, idFood);
	}

}
