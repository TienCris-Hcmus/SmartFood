package controller;

import java.io.IOException;
import java.util.ResourceBundle;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.impl.AdminDAO;
import dao.impl.CustomerDAO;
import model.AdminModel;
import model.CustomerModel;
import utils.SessionUtil;

@WebServlet(urlPatterns = {"/dang-xuat"})
public class LogoutController extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		if(action!=null) {
			if(action.equals("adminLogout")) {
				SessionUtil.getInstance().removeValue(req, "ADMINMODEL");
			}
		}else {
			SessionUtil.getInstance().removeValue(req, "USERMODEL");
		}
		resp.sendRedirect(req.getContextPath() + "/trang-chu");
	}
	
}
