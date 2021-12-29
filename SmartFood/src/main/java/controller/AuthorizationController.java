package controller;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.AdminModel;
import utils.SessionUtil;
import utils.SystemConstant;

//Muốn chạy phải khai báo filter bên web.xml
public class AuthorizationController implements Filter {

	private ServletContext context;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.context = filterConfig.getServletContext();
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest rq = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		//Lấy nguyên cái link đang request
//		String url = rq.getRequestURI();  //Lấy hết
//		String test = rq.getContextPath();  //Lấy cái laptrinhjavaweb.com
		String url = rq.getServletPath(); //Link sau laptrinhjavaweb.com/admin-..
		if(url.startsWith("/admin")) {
			AdminModel model = (AdminModel) SessionUtil.getInstance().getValue(rq,"ADMINMODEL");
			if(model!=null) {
				chain.doFilter(request, response);
			}else {
				resp.sendRedirect(rq.getContextPath() + "/trang-chu");
			}
		}else {
			chain.doFilter(request, response);
		}
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

}
