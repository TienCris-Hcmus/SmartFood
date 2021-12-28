package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.impl.CustomerDAO;
import dao.impl.HistoryDAO;
import model.CustomerModel;
import model.HistoryModel;
import utils.FormUtil;
import utils.SessionUtil;

@WebServlet(urlPatterns = {"/lich-su-mua-hang"})
public class HistoryController extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CustomerModel model = null;
		model = (CustomerModel) SessionUtil.getInstance().getValue(req, "USERMODEL");
		if(model != null) {
			HistoryDAO dao = new HistoryDAO();
			HistoryModel model2 = new HistoryModel();
			model2.setListResult(dao.findAll(model.getIdCus()));
			req.setAttribute("list", model2);
			RequestDispatcher rd = req.getRequestDispatcher("/views/web/history.jsp");
			rd.forward(req, resp);
		}else {
			resp.sendRedirect(req.getContextPath() + "/dang-nhap?message=not_login&alert=danger");
		}
		
	}
	
}
