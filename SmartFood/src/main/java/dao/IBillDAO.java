package dao;

import java.util.List;

import model.BillModel;
import model.CartDetailModel;

public interface IBillDAO extends GenericDAO<BillModel>{
	//Update Status = 1, create new Bill for Customer, Update bought food quantity
	void update(int idCus, List<CartDetailModel> cartList);
}
