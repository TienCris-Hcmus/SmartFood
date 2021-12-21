package controller;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.IFoodStoreDAO;
import dao.impl.FoodDAO;
import dao.impl.FoodStoreDAO;
import model.FoodModel;
import model.Food_Store_Model;
import utils.FormUtil;
import utils.SystemConstant;

@WebServlet(urlPatterns = { "/trang-chu" })
public class HomeController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Food_Store_Model model = FormUtil.toModel(Food_Store_Model.class, req);
		FoodStoreDAO dao = new FoodStoreDAO();
		if (model.getAction() != null) {
			if (model.getAction().equals("random")) {
				// Random 1 sản phẩm
				model.setListResult(dao.findRandom());
			}
		} else if(model.getSearch()!=null){
			model.setListResult(dao.searchFood(model.getSearch()));
		}else {
			// Danh sách sản phẩm
			model.setListResult(dao.findAll());
		}
		req.setAttribute("model", model);

		// Trend 3 món ăn
		FoodModel trend = new FoodModel();
		FoodDAO foodDao = new FoodDAO();
		trend.setListResult(foodDao.findTrend());
		req.setAttribute("trend", trend);

		RequestDispatcher rd = req.getRequestDispatcher("/views/web/body.jsp");
		rd.forward(req, resp);
	}
}
