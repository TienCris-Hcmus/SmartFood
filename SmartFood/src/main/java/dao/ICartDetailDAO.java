package dao;

import java.util.List;

import model.CartDetailModel;

public interface ICartDetailDAO extends GenericDAO<CartDetailModel>{
	List<CartDetailModel> findAll(int idCus);
	void delete(int idFood, int idBill);
	void update(int idFood, int idBill, boolean add);
	void insert(int idBill, int idFood, int quantity);
}
