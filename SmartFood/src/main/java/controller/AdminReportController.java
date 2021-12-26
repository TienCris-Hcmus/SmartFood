package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.impl.CartDetailDAO;
import dao.impl.ReportDAO;
import model.CartDetailModel;
import model.CustomerModel;
import model.ReportModel;
import utils.SessionUtil;

@WebServlet(urlPatterns = { "/admin-report" })
public class AdminReportController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		if(action.equals("list")) {
			ReportDAO dao = new ReportDAO();
			ReportModel model = new ReportModel();
			model.setListResult(dao.findAll());
			req.setAttribute("list", model);
			RequestDispatcher rd = req.getRequestDispatcher("/views/admin/Report.jsp");
			rd.forward(req, resp);
		}else if(action.equals("detail")) {
			int id = Integer.parseInt(req.getParameter("id"));
			String status = req.getParameter("status");
			ReportDAO dao = new ReportDAO();
			if(status.equals("Chưa Xem")) {
				dao.update(id);
			}
			ReportModel model = dao.findOne(id);
			req.setAttribute("report", model);
			RequestDispatcher rd = req.getRequestDispatcher("/views/admin/Report Message.jsp");
			rd.forward(req, resp);
		}
		
	}
}
