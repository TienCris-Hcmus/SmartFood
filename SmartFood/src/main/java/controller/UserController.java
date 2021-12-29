package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.impl.CustomerDAO;
import model.CustomerModel;
import utils.FormUtil;
import utils.SessionUtil;

@WebServlet(urlPatterns = {"/thong-tin"})
public class UserController extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		String link = null;
		if(action!=null) {
			if(action.equals("edit")) {
				link = "/views/web/editThongtinUser.jsp";
			}
		}else {
			link = "/views/web/thongtinuser.jsp";
		}
		RequestDispatcher rd = req.getRequestDispatcher(link);
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF8");
		CustomerModel model = FormUtil.toModel(CustomerModel.class, req);
		CustomerDAO dao = new CustomerDAO();
		SessionUtil.getInstance().removeValue(req, "USERMODEL");
		dao.update(model);
		if(!model.getPassword().isEmpty()) {
			resp.sendRedirect(req.getContextPath() + "/dang-xuat");
		}else {
			CustomerModel model1 = dao.findLogin(model.getIdCus());
			if(model1!=null) {
				SessionUtil.getInstance().putValue(req, "USERMODEL", model1);
			}
			resp.sendRedirect(req.getContextPath() +"/thong-tin");
		}

	}
}
