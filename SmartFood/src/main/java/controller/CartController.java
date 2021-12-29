package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.impl.BillDAO;
import dao.impl.CartDetailDAO;
import model.CartDetailModel;
import model.CustomerModel;
import utils.SessionUtil;

@WebServlet(urlPatterns = { "/gio-hang" })
public class CartController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CartDetailModel model = new CartDetailModel();
		CartDetailDAO dao = new CartDetailDAO();
		CustomerModel cusModel = null;
		cusModel = ((CustomerModel)SessionUtil.getInstance().getValue(req, "USERMODEL"));
		if(cusModel != null) {
			model.setListResult(dao.findAll(cusModel.getIdCus()));
			SessionUtil.getInstance().putValue(req, "cart", model);
			RequestDispatcher rd = req.getRequestDispatcher("/views/web/giohang.jsp");
			rd.forward(req, resp);
		}else {
			resp.sendRedirect(req.getContextPath() + "/dang-nhap?message=not_login&alert=danger");
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		if(action!=null) {
			if(action.equals("delete")) {
				int idFood = Integer.parseInt(req.getParameter("idFood"));
				int idBill = Integer.parseInt(req.getParameter("idBill"));
				CartDetailDAO dao = new CartDetailDAO();
				dao.delete(idFood, idBill);
				resp.sendRedirect(req.getContextPath()+"/gio-hang");
			}else if(action.equals("add")) {
				int idFood = Integer.parseInt(req.getParameter("idFood"));
				int idBill = Integer.parseInt(req.getParameter("idBill"));
				CartDetailDAO dao = new CartDetailDAO();
				dao.update(idFood, idBill, true);
				resp.sendRedirect(req.getContextPath() + "/gio-hang");
			}else if(action.equals("minus")) {
				int idFood = Integer.parseInt(req.getParameter("idFood"));
				int idBill = Integer.parseInt(req.getParameter("idBill"));
				int quantity = Integer.parseInt(req.getParameter("quantity"));
				if(quantity>=2) {
					CartDetailDAO dao = new CartDetailDAO();
					dao.update(idFood, idBill, false);
				}
				resp.sendRedirect(req.getContextPath() + "/gio-hang");
			}else if(action.equals("addFood")) {
				CustomerModel cusModel = null;
				cusModel = ((CustomerModel)SessionUtil.getInstance().getValue(req, "USERMODEL"));
				if(cusModel != null) {
					int idFood = Integer.parseInt(req.getParameter("idFood"));
					int quantity = Integer.parseInt(req.getParameter("quantity"));
					if(quantity > 0) {
						BillDAO dao = new BillDAO();
						int idBill = dao.findIdBill(cusModel.getIdCus());
						CartDetailDAO dao2 = new CartDetailDAO();
						dao2.insert(idBill, idFood, quantity);
					}
					resp.sendRedirect(req.getContextPath() + "/chi-tiet-mon-an?id=" + idFood);
				}else {
					resp.sendRedirect(req.getContextPath() + "/dang-nhap?message=not_login&alert=danger");
				}
				
				

			}
			
		}
	}
}
