package dao.impl;

import java.util.List;

import dao.IFoodStoreDAO;
import mapper.FoodMapper;
import mapper.Food_Store_Mapper;
import model.FoodModel;
import model.Food_Store_Model;
import utils.paging.Pageble;

public class FoodStoreDAO extends AbstractDAO<Food_Store_Model> implements IFoodStoreDAO{

//	@Override
//	public List<Food_Store_Model> findAll(Pageble pageble) {
//		StringBuilder sql = new StringBuilder("SELECT f.IDFood, f.Name_, f.Price, f.Image, s.StoreName FROM food f, store s WHERE f.IDStore = s.IDStore ");
//		if(pageble.getOffset()!=null &&pageble.getLimit()!=null) {
//			sql.append(" LIMIT "+pageble.getOffset()+", "+pageble.getLimit()+"");
//		}
//		return query(sql.toString(), new Food_Store_Mapper());
//	}

	@Override
	public int getTotalItem() {
		String sql = "SELECT COUNT(*) FROM food";
		return count(sql);
	}

	@Override
	public List<Food_Store_Model> findAll() {
		StringBuilder sql = new StringBuilder("SELECT * FROM food f, store s WHERE f.IDStore = s.IDStore ");
		return query(sql.toString(), new Food_Store_Mapper());
	}

	@Override
	public List<Food_Store_Model> findRandom() {
		StringBuilder sql = new StringBuilder("SELECT * FROM food f, store s WHERE f.IDStore = s.IDStore order by RAND() limit 1");
		return query(sql.toString(), new Food_Store_Mapper());
	}

	@Override
	public List<Food_Store_Model> searchFood(String search) {
		StringBuilder sql = new StringBuilder("SELECT * FROM food f, store s WHERE f.IDStore = s.IDStore");
		sql.append(" AND f.Name_ like lower(N'%");
		sql.append(search);
		sql.append("%')");
		return query(sql.toString(), new Food_Store_Mapper());
	}

	@Override
	public Food_Store_Model findOne(Integer id) {
		String sql = "SELECT * FROM food f, store s WHERE f.IDStore = s.IDStore and f.IDFood=?";
		List<Food_Store_Model> list = query(sql, new Food_Store_Mapper(), id);
		return list.isEmpty() ? null : list.get(0);
	}



}
