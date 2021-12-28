package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.impl.CartDetailDAO;
import dao.impl.NewShopDAO;
import model.CartDetailModel;
import model.CustomerModel;
import model.NewShopModel;
import utils.SessionUtil;

@WebServlet(urlPatterns = { "/admin-newshop" })
public class AdminNewShopController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		if (action != null) {
			if (action.equals("duyet")) {
				int id = Integer.parseInt(req.getParameter("id"));
				NewShopDAO dao = new NewShopDAO();
				dao.deleteNew(id);
				resp.sendRedirect(req.getContextPath() + "/admin-newshop?action=list");
			} else if (action.equals("list")) {
				NewShopDAO dao = new NewShopDAO();
				NewShopModel model = new NewShopModel();
				model.setListResult(dao.getAll());
				req.setAttribute("list", model);
				RequestDispatcher rd = req.getRequestDispatcher("/views/admin/New Shop.jsp");
				rd.forward(req, resp);
			}
		}
	}
}
