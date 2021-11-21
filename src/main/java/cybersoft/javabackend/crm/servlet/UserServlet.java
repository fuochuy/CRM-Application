package cybersoft.javabackend.crm.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cybersoft.javabackend.crm.entity.User;
import cybersoft.javabackend.crm.service.UserService;
import cybersoft.javabackend.crm.util.JspConst;
import cybersoft.javabackend.crm.util.UrlConst;

@WebServlet(
		name = "userServlet",
		urlPatterns ={
				UrlConst.USERLIST, UrlConst.CREATEUSER
		}
)
public class UserServlet extends HttpServlet{
	private UserService service;
	private String action;
	
	@Override
	public void init() throws ServletException {
		super.init();
		service=new UserService();
		action="";
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		action=req.getServletPath();
		super.service(req, resp);
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		switch(action) {
		case UrlConst.USERLIST:
			List<User> users = service.getUsers();
			req.setAttribute("users", users);
			req.getRequestDispatcher(JspConst.USERLIST)
				.forward(req,resp);
			break;
		case UrlConst.CREATEUSER:
			req.getRequestDispatcher(JspConst.CREATEUSER)
				.forward(req, resp);
			break;
		default:
			break;
		}
	}
}
