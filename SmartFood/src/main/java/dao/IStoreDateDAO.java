package dao;

import java.util.List;

import model.FoodModel;
import model.StoreDateModel;

public interface IStoreDateDAO extends GenericDAO<StoreDateModel>{
	List<StoreDateModel> findAll();
}
