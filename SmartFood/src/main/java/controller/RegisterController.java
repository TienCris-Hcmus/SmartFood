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
import dao.impl.NewShopDAO;
import model.CustomerModel;
import utils.FormUtil;
import utils.SessionUtil;

@WebServlet(urlPatterns = {"/dang-ky"})
public class RegisterController extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	ResourceBundle rb = ResourceBundle.getBundle("message");
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		if(action != null) {
			if(action.equals("shop")) {
				RequestDispatcher rd = req.getRequestDispatcher("/views/web/DangKy_NewShop.jsp");
				rd.forward(req, resp);
			}
		}else {
			String message = req.getParameter("message");
			String alert = req.getParameter("alert");
			if(message != null && alert != null) {
				req.setAttribute("message", "Tên tài khoản đã tồn tại");
				req.setAttribute("alert", alert);
			}
			
			RequestDispatcher rd = req.getRequestDispatcher("/views/SignUp.jsp");
			rd.forward(req, resp);
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF8");
		String action = req.getParameter("action");
		if(action!=null) {
			if(action.equals("submitShop")) {
				String name = req.getParameter("shopname");
				String phone = req.getParameter("phone");
				NewShopDAO dao = new NewShopDAO();
				dao.addNew(name, phone);
				resp.sendRedirect(req.getContextPath() + "/dang-nhap");
			}
			if(action.equals("submitCus")) {
				CustomerModel model = FormUtil.toModel(CustomerModel.class, req);
				CustomerDAO dao = new CustomerDAO();
				CustomerModel checkModel = dao.findLogin(model.getUsername());
				//Kiểm tra username có tồn tại chưa
				if(checkModel==null) {
					dao.register(model);
					resp.sendRedirect(req.getContextPath() +"/dang-nhap");
				}else {
					resp.sendRedirect(req.getContextPath() +"/dang-ky?message=username_password_invalid&alert=danger");
				}

			}
		}

	}
}
