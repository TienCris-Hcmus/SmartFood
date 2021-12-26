package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.impl.CartDetailDAO;
import model.CartDetailModel;
import model.CustomerModel;
import utils.SessionUtil;

@WebServlet(urlPatterns = { "/admin-account" })
public class AdminAccountController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("/views/admin/Custommer.jsp");
		rd.forward(req, resp);
	}
}
