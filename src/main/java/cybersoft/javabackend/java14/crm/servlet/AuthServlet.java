package cybersoft.javabackend.java14.crm.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cybersoft.javabackend.java14.crm.entity.User;
import cybersoft.javabackend.java14.crm.service.UserService;
import cybersoft.javabackend.java14.crm.util.JspConst;
import cybersoft.javabackend.java14.crm.util.SessionUtil;
import cybersoft.javabackend.java14.crm.util.UrlConst;

@WebServlet(name = "auth", urlPatterns = {
		UrlConst.SIGN_IN,
		UrlConst.SIGN_UP,
		UrlConst.SIGN_OUT
})
public class AuthServlet extends HttpServlet {

	private static final long serialVersionUID = -9065973247091639836L;
	private UserService userService;
	
	@Override
	public void init() throws ServletException {
		super.init();
		userService = new UserService();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getServletPath();
		switch (path) {
		case UrlConst.SIGN_IN:
			request.getRequestDispatcher(JspConst.SIGN_IN).forward(request, response);
			break;
		case UrlConst.SIGN_UP:
			request.getRequestDispatcher(JspConst.SIGN_UP).forward(request, response);
			break;
		case UrlConst.SIGN_OUT:
			SessionUtil.getInstance().removeValue(request, "login");
			response.sendRedirect(request.getContextPath() + UrlConst.SIGN_IN);
			break;
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String path = request.getServletPath();
		switch (path) {
		case UrlConst.SIGN_IN:
			User login = userService.checkLogIn(email, password);
			if (login != null) {
				
				String[] fullname = login.getName().split(" ");
				String lastName = fullname[fullname.length-1];
				
				SessionUtil.getInstance().putValue(request, "lastname", lastName);
				
				SessionUtil.getInstance().putValue(request, "login", login);
				response.sendRedirect(request.getContextPath() + UrlConst.HOME);
			} else {
				request.setAttribute("message", "Đăng nhập thất bại");
				request.setAttribute("alert", "danger");
				SessionUtil.getInstance().putValue(request, "model", login);
				request.getRequestDispatcher(JspConst.SIGN_IN).forward(request, response);
			}
			break;
		case UrlConst.SIGN_UP:
			String name = request.getParameter("name");
			String phone = request.getParameter("phone");
			String address = request.getParameter("address");
			User user = new User();
			user.setName(name);
			user.setEmail(email);
			user.setPassword(password);
			user.setPhone(phone);
			user.setAddress(address);
			user.setRoleId(3); // When users register an account, they are all member.
			if (userService.insertUser(user)) {
				request.setAttribute("message", "Đăng ký thành công");
				request.setAttribute("alert", "success");
			} else {
				request.setAttribute("message", "Đăng ký thất bại");
				request.setAttribute("alert", "danger");
			}
			request.getRequestDispatcher(JspConst.SIGN_UP).forward(request, response);
			break;
		}
	}
}
