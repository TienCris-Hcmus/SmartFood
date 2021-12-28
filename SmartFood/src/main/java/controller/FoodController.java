package controller;

import java.io.IOException;
import java.util.ResourceBundle;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.impl.CustomerDAO;
import dao.impl.FoodStoreDAO;
import dao.impl.NewShopDAO;
import model.CustomerModel;
import model.Food_Store_Model;
import utils.SessionUtil;

@WebServlet(urlPatterns = {"/chi-tiet-mon-an"})
public class FoodController extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		FoodStoreDAO dao = new FoodStoreDAO();
		Food_Store_Model model = dao.findOne(id);
		req.setAttribute("food", model);
		RequestDispatcher rd = req.getRequestDispatcher("/views/web/product details.jsp");
		rd.forward(req, resp);
	}
}
