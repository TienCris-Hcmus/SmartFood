package dao;

import java.util.List;

import model.FoodModel;
import model.Food_Store_Model;
import utils.paging.Pageble;

public interface IFoodStoreDAO extends GenericDAO<Food_Store_Model> {
//	List<Food_Store_Model> findAll(Pageble pageble);
	List<Food_Store_Model> findAll();
	List<Food_Store_Model> findRandom();
	Food_Store_Model findOne(Integer id);
	List<Food_Store_Model> searchFood(String search);
	int getTotalItem();
}
