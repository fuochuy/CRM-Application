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

import cybersoft.javabackend.java14.crm.util.UrlConst;

@WebFilter(urlPatterns = {
		UrlConst.ROOT
})
public class EncodingFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		
		/* code Ä‘Æ°á»£c thá»±c hiá»‡n khi nháº­n request */
		req.setCharacterEncoding("UTF-8");
		
		chain.doFilter(req, resp);
		
		/*code Ä‘Æ°á»£c thá»±c hiá»‡n khi tráº£ vá»� response */
		resp.setCharacterEncoding("UTF-8");
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
