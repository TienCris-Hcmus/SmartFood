package dao.impl;

import java.util.List;

import dao.IFoodStoreDAO;
import dao.IStoreDateDAO;
import mapper.FoodMapper;
import mapper.Food_Store_Mapper;
import mapper.StoreDateMapper;
import model.FoodModel;
import model.Food_Store_Model;
import model.StoreDateModel;
import utils.paging.Pageble;

public class StoreDateDAO extends AbstractDAO<StoreDateModel> implements IStoreDateDAO{

	@Override
	public List<StoreDateModel> findAll() {
		String sql = "select s.*, c.DateCreated from store s, contract c where s.IDStore = c.IDStore";
		return query(sql, new StoreDateMapper());
	}



}
