package dao;

import java.util.List;

import model.FoodModel;
import model.Food_Store_Model;
import model.HistoryModel;
import utils.paging.Pageble;

public interface IHistoryDAO extends GenericDAO<HistoryModel> {
	List<HistoryModel> findAll(int idCus);
}
