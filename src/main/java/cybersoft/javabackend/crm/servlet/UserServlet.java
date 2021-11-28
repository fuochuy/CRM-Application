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
				UrlConst.LOGIN,UrlConst.FORGOTPS,UrlConst.SIGNUP,
				UrlConst.USERLIST, UrlConst.CREATEUSER, UrlConst.DELETEUSER
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
		case UrlConst.LOGIN:
			req.getRequestDispatcher(JspConst.LOGIN)
			.forward(req,resp);
		case UrlConst.USERLIST:
			List<User> users = service.getUsers();
			req.setAttribute("users", users);
			req.getRequestDispatcher(JspConst.USERLIST)
				.forward(req,resp);
			break;
		case UrlConst.HOME:
			req.getRequestDispatcher(JspConst.HOME)
				.forward(req, resp);
			break;
		case UrlConst.FORGOTPS:
			req.getRequestDispatcher(JspConst.FORGOTPS)
			.forward(req,resp);
			break;
		case UrlConst.SIGNUP:
			req.getRequestDispatcher(JspConst.SIGNUP)
			.forward(req,resp);
			break;
		case UrlConst.DELETEUSER:
			if(req.getParameter("user_id")!=null) {
				int id = Integer.parseInt(req.getParameter("user_id"));
				service.deleteUser(id);
			}
			resp.sendRedirect(req.getContextPath() + UrlConst.USERLIST);
			break;
		case UrlConst.CREATEUSER:
			req.getRequestDispatcher(JspConst.CREATEUSER)
			.forward(req, resp);
		break;
		default:
			break;
		}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<User> users= service.getUsers();
		String name_2 = req.getParameter("name_2");
		String email_2 = req.getParameter("email_2");
		String password_2 = req.getParameter("password_2");
		
		if(name_2 !=null && email_2 !=null && password_2 !=null) {
			User u = new User();
			u.setName(name_2);
			u.setEmail(email_2);
			u.setPassword(password_2);
			
			if(service.addUser(u)) {
				resp.sendRedirect(req.getContextPath() + UrlConst.LOGIN);
			}
			else {
				resp.sendRedirect(req.getContextPath() + UrlConst.SIGNUP);
			}
		}
	
		String email_1 = req.getParameter("email_1");
		String password_1=req.getParameter("password_1");
		if(email_1!=null && password_1!=null) {
			
			if(service.updatePassword(email_1, password_1)) {
				
				resp.sendRedirect(req.getContextPath() + UrlConst.LOGIN);
			}
			else {
				resp.sendRedirect(req.getContextPath() + UrlConst.FORGOTPS);
			}
		}
		
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		if(email!=null) {
			boolean isSuccess=false;
			for(User u: users) {
				if(u.getEmail().equals(email) && u.getPassword().equals(password)) {
					
					isSuccess=true;
					String[] fullname = u.getName().split(" ");
					String lastName = fullname[fullname.length-1];
					String nickname = "@" + fullname[fullname.length-1]+fullname[0];
					
					req.getSession().setAttribute("lastname", lastName);
					req.getSession().setAttribute("fullname", u.getName());
					req.getSession().setAttribute("nickname",  nickname );
					req.getSession().setAttribute("isAuthenticated", true);
					resp.sendRedirect(req.getContextPath() + UrlConst.HOME);
				}
			}
			
			if(isSuccess==false) {
				resp.sendRedirect(req.getContextPath() + UrlConst.LOGIN);
			}
		}
		
		
	}
}
