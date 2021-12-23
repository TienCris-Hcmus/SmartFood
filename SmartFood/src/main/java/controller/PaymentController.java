package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.impl.BillDAO;
import model.CartDetailModel;
import model.CustomerModel;
import utils.SessionUtil;

@WebServlet(urlPatterns = {"/thanh-toan"})
public class PaymentController extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		if(action != null) {
			if(action.equals("pay")) {
				//update status bill equal 1 and create blank cart for specific customer and update bought food quantity
				CustomerModel model = (CustomerModel) SessionUtil.getInstance().getValue(req, "USERMODEL");
				CartDetailModel cartModel = (CartDetailModel) SessionUtil.getInstance().getValue(req, "cart");
				BillDAO dao = new BillDAO();
				dao.update(model.getIdCus(), cartModel.getListResult());
				//then redirect to homepage
				resp.sendRedirect(req.getContextPath()+"/trang-chu");
			}
		}else {
			CartDetailModel model = (CartDetailModel) SessionUtil.getInstance().getValue(req, "cart");
			int sum = 0;
			for (CartDetailModel item : model.getListResult()) {
				sum += item.getPrice()*item.getQuantity();
			}
			SessionUtil.getInstance().putValue(req, "cartTotal" , sum);
			SessionUtil.getInstance().putValue(req, "total" , sum + 15000);
			RequestDispatcher rd = req.getRequestDispatcher("/views/web/thanhtoan.jsp");
			rd.forward(req, resp);
		}

	}
	
}
