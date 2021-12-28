package dao;

import java.util.List;

import model.AdminModel;
import model.CustomerModel;
import model.NewShopModel;

public interface INewShopDAO extends GenericDAO<NewShopModel>{
	void addNew(String name, String phone);
	List<NewShopModel> getAll();
	void deleteNew(int id);
}
