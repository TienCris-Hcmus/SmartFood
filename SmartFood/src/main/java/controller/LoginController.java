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

@WebServlet(urlPatterns = {"/dang-nhap"})
public class LoginController extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	ResourceBundle rb = ResourceBundle.getBundle("message");

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String message = req.getParameter("message");
		String alert = req.getParameter("alert");
		if(message != null && alert != null) {
			req.setAttribute("message", rb.getString(message));
			req.setAttribute("alert", alert);
		}
		RequestDispatcher rd = req.getRequestDispatcher("/views/LogIn.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userName = req.getParameter("username");
		String password = req.getParameter("password");
		//admin role will be redirect to admin page
		if(userName.contains("admin")) {
			AdminDAO dao = new AdminDAO();
			AdminModel model = dao.findLogin(userName, password);
			if(model!=null) {
				SessionUtil.getInstance().putValue(req, "USERMODEL", model);
				resp.sendRedirect(req.getContextPath() + "/admin-report?action=list");
			}else {
				resp.sendRedirect(req.getContextPath() +"/dang-nhap?message=username_password_invalid&alert=danger");
			}
		}else if(userName.contains("store")) {
			
		}else {
			CustomerDAO dao = new CustomerDAO();
			CustomerModel model = dao.findLogin(userName, password);
			if(model!=null) {
				SessionUtil.getInstance().putValue(req, "USERMODEL", model);
				resp.sendRedirect(req.getContextPath() + "/trang-chu");
			}else {
				resp.sendRedirect(req.getContextPath() +"/dang-nhap?message=username_password_invalid&alert=danger");
			}
		}
	}
}
