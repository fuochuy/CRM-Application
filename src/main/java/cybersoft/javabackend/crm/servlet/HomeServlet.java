package cybersoft.javabackend.crm.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cybersoft.javabackend.crm.util.JspConst;
import cybersoft.javabackend.crm.util.UrlConst;

@WebServlet(name = "homeServlet", urlPatterns = {
		UrlConst.HOME,
		
		UrlConst.ALERTS,UrlConst.BUTTON,UrlConst.AVATARS,UrlConst.CHARTS,UrlConst.DATETIME,
		UrlConst.DRAG,UrlConst.FORMS,UrlConst.ICONS,UrlConst.LOADER,UrlConst.MODALS,
		UrlConst.PAGINATION,UrlConst.RANGE,UrlConst.TABLE, UrlConst.TABS, UrlConst.VECTOR,
		
		UrlConst.ACCOUNT_EDIT, UrlConst.APP_TRELLO,UrlConst.FULL_CALENDAR,UrlConst.PROFILE,UrlConst.LOGIN,
		
		UrlConst.MANAGE, UrlConst.CREATE,
		
		UrlConst.TASK
		
})
public class HomeServlet extends HttpServlet{
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getServletPath();
		
		switch(path){
		case UrlConst.HOME:
			req.getRequestDispatcher(JspConst.HOME).forward(req, resp);
			break;
			
		case UrlConst.BUTTON:
			req.getRequestDispatcher(JspConst.BUTTON).forward(req, resp);
			break;
		case UrlConst.ALERTS:
			req.getRequestDispatcher(JspConst.ALERTS).forward(req, resp);
			break;
		case UrlConst.AVATARS:
			req.getRequestDispatcher(JspConst.AVATARS).forward(req, resp);
			break;
		case UrlConst.CHARTS:
			req.getRequestDispatcher(JspConst.CHARTS).forward(req, resp);
			break;
		case UrlConst.DATETIME:
			req.getRequestDispatcher(JspConst.DATETIME).forward(req, resp);
			break;
		case UrlConst.DRAG:
			req.getRequestDispatcher(JspConst.DRAG).forward(req, resp);
			break;
		case UrlConst.FORMS:
			req.getRequestDispatcher(JspConst.FORMS).forward(req, resp);
			break;
		case UrlConst.ICONS:	
			req.getRequestDispatcher(JspConst.ICONS).forward(req, resp);
			break;
		case UrlConst.LOADER:
			req.getRequestDispatcher(JspConst.LOADER).forward(req, resp);
			break;
		case UrlConst.MODALS:
			req.getRequestDispatcher(JspConst.MODALS).forward(req, resp);
			break;
		case UrlConst.PAGINATION:
			req.getRequestDispatcher(JspConst.PAGINATION).forward(req, resp);
			break;
		case UrlConst.RANGE:
			req.getRequestDispatcher(JspConst.RANGE).forward(req, resp);
			break;
		case UrlConst.TABLE:
			req.getRequestDispatcher(JspConst.TABLE).forward(req, resp);
			break;
		case UrlConst.TABS:
			req.getRequestDispatcher(JspConst.TABS).forward(req, resp);
			break;
		case UrlConst.VECTOR:
			req.getRequestDispatcher(JspConst.VECTOR).forward(req, resp);
			break;
			
		case UrlConst.ACCOUNT_EDIT:
			req.getRequestDispatcher(JspConst.ACOUNT_EDIT).forward(req, resp);
			break;
		case UrlConst.FULL_CALENDAR:
			req.getRequestDispatcher(JspConst.FULL_CALENDAR).forward(req, resp);
			break;
		case UrlConst.APP_TRELLO:
			req.getRequestDispatcher(JspConst.APP_TRELLO).forward(req, resp);
			break;
		case UrlConst.PROFILE:
			req.getRequestDispatcher(JspConst.PROFILE).forward(req, resp);
			break;
		case UrlConst.LOGIN:
			req.getRequestDispatcher(JspConst.LOGIN).forward(req, resp);
			break;
			
		case UrlConst.MANAGE:
			req.getRequestDispatcher(JspConst.MANAGE).forward(req, resp);
			break;
		case UrlConst.CREATE:
			req.getRequestDispatcher(JspConst.CREATE).forward(req, resp);
			break;
			
		case UrlConst.TASK:
			req.getRequestDispatcher(JspConst.TASK).forward(req, resp);
			break;
		default: break;
		
		}
	}
}
