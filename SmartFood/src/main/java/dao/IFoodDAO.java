package dao;

import java.util.List;

import model.FoodModel;

public interface IFoodDAO extends GenericDAO<FoodModel>{
	List<FoodModel> findTrend();
}
