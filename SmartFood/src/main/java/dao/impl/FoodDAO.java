package dao.impl;

import java.util.List;

import dao.IFoodDAO;
import mapper.FoodMapper;
import model.FoodModel;

public class FoodDAO extends AbstractDAO<FoodModel> implements IFoodDAO{

	@Override
	public List<FoodModel> findTrend() {
		StringBuilder sql = new StringBuilder("SELECT * from food order by Buy desc limit 0,3");
		return query(sql.toString(), new FoodMapper());
	}



}
