package cybersoft.javabackend.java14.crm.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import cybersoft.javabackend.java14.crm.entity.Project;
import cybersoft.javabackend.java14.crm.entity.User;
import cybersoft.javabackend.java14.crm.service.ProjectService;
import cybersoft.javabackend.java14.crm.util.DateConverter;
import cybersoft.javabackend.java14.crm.util.JspConst;
import cybersoft.javabackend.java14.crm.util.SessionUtil;
import cybersoft.javabackend.java14.crm.util.UrlConst;

@WebServlet(name="projectServlet", urlPatterns = {
		UrlConst.CREATE_PROJECT,
		UrlConst.MANAGE_PROJECT
})
public class ProjectServlet extends HttpServlet{

	private static final long serialVersionUID = 5101353279731457467L;
	private ProjectService projectService;
	
	@Override
	public void init() throws ServletException {
		super.init();
		projectService = new ProjectService();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getServletPath();
		switch (path) {
		case UrlConst.CREATE_PROJECT:
			if (request.getParameter("id") != null) {
				int projecId = Integer.parseInt(request.getParameter("id"));
				request.setAttribute("project", projectService.getProjectById(projecId));
			}
			request.getRequestDispatcher(JspConst.CREATE_PROJECT).forward(request, response);
			break;
		case UrlConst.MANAGE_PROJECT:
			if (request.getParameter("id") != null) {
				int projectId = Integer.parseInt(request.getParameter("id"));
				projectService.deleteProject(projectId);
			}
			
			request.setAttribute("projects", projectService.getProject());
			request.getRequestDispatcher(JspConst.MANAGE_PROJECT).forward(request, response);
			break;
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String description = request.getParameter("description");
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
			
		Project project = new Project();
		project.setName(name);
		project.setDescription(description);
		project.setStartDate(DateConverter.convertStringToDateInSql(startDate));
		project.setEndDate(DateConverter.convertStringToDateInSql(endDate));
		
		if(request.getParameter("id") == null) { // Add Project
			project.setCreateBy(((User)SessionUtil.getInstance().getValue(request, "login")).getId());
			if (projectService.insertProject(project)) {
				request.setAttribute("message", "Thêm thành công");
				request.setAttribute("alert", "success");
			} else {
				request.setAttribute("message", "Thêm thất bại công");
				request.setAttribute("alert", "danger");
			}
		}else { // Edit Project
			int id = Integer.parseInt(request.getParameter("id"));
			project.setId(id);
			Project newProject = projectService.updateProject(project);
			if (newProject != null) {
				request.setAttribute("message", "Cập nhật thành công");
				request.setAttribute("alert", "success");
				request.setAttribute("project", newProject);
			} else {
				request.setAttribute("message", "Cập nhật thất bại");
				request.setAttribute("alert", "danger");
				request.setAttribute("project", project);
			}
		}
		request.getRequestDispatcher(JspConst.CREATE_PROJECT).forward(request, response);
	}
}
