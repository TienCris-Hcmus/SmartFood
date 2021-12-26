package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.impl.CartDetailDAO;
import dao.impl.StoreDateDAO;
import model.CartDetailModel;
import model.CustomerModel;
import model.StoreDateModel;
import utils.SessionUtil;

@WebServlet(urlPatterns = { "/admin-shop" })
public class AdminShopController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StoreDateDAO dao = new StoreDateDAO();
		StoreDateModel model = new StoreDateModel();
		model.setListResult(dao.findAll());
		req.setAttribute("shopList", model);
		RequestDispatcher rd = req.getRequestDispatcher("/views/admin/Shop.jsp");
		rd.forward(req, resp);
	}
}
