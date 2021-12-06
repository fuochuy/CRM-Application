package cybersoft.javabackend.java14.crm.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cybersoft.javabackend.java14.crm.util.JspConst;
import cybersoft.javabackend.java14.crm.util.UrlConst;

@WebServlet(name = "homeServlet", urlPatterns = {
		UrlConst.HOME
})
public class HomeServlet extends HttpServlet {
	
	private static final long serialVersionUID = 8107826244134841358L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher(JspConst.HOME)
			.forward(req, resp);
	}
}
