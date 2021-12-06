package cybersoft.javabackend.java14.crm.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cybersoft.javabackend.java14.crm.entity.User;
import cybersoft.javabackend.java14.crm.util.SessionUtil;
import cybersoft.javabackend.java14.crm.util.UrlConst;

@WebFilter(urlPatterns = {
		UrlConst.CREATE_PROJECT, UrlConst.MANAGE_PROJECT,
		UrlConst.CREATE_USER, UrlConst.USER_LIST,
		UrlConst.HOME, UrlConst.SIGN_IN, UrlConst.SIGN_UP
})
public class AuthFilter implements Filter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;
		String url = request.getRequestURI(); // GET PRESENT LINK
		User user = ((User) SessionUtil.getInstance().getValue(request, "login"));
		// MEMBER
		if (url.startsWith(request.getContextPath() + UrlConst.CREATE_PROJECT)
				|| url.startsWith(request.getContextPath() + UrlConst.MANAGE_PROJECT)
				|| url.startsWith(request.getContextPath() + UrlConst.CREATE_USER)
				|| url.startsWith(request.getContextPath() + UrlConst.USER_LIST)) {
			if (user != null) {
				if(url.startsWith(request.getContextPath() + UrlConst.CREATE_USER) && request.getQueryString() != null) {// ALL USER ARE ACCESSED EDIT PROFILE
					chain.doFilter(request, response);
				}
				else if (user.getRole().getName().equalsIgnoreCase("MEMBER")) { // MEMBER IS ACCESSED TO HOME AND TASK
					response.sendRedirect(request.getContextPath() + UrlConst.HOME);
				}else{ // ADMIN, LEADER ARE FULL ACCESS TO WEB
					chain.doFilter(request, response);
				}
			} else {
				response.sendRedirect(request.getContextPath() + UrlConst.SIGN_IN);
			}
		}else {
			if (user != null) {
				chain.doFilter(request, response);
			} else if (UrlConst.SIGN_IN.equals(request.getServletPath()) || UrlConst.SIGN_UP.equals(request.getServletPath())) {
				chain.doFilter(request, response);
			} else {
				response.sendRedirect(request.getContextPath() + UrlConst.SIGN_IN);
			}
		}

	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

}
