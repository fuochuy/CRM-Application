package cybersoft.javabackend.java14.crm.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cybersoft.javabackend.java14.crm.entity.Task;
import cybersoft.javabackend.java14.crm.service.ProjectService;
import cybersoft.javabackend.java14.crm.service.StatusService;
import cybersoft.javabackend.java14.crm.service.TaskService;
import cybersoft.javabackend.java14.crm.service.UserService;
import cybersoft.javabackend.java14.crm.util.DateConverter;
import cybersoft.javabackend.java14.crm.util.JspConst;
import cybersoft.javabackend.java14.crm.util.UrlConst;

@WebServlet(name="taskServlet", urlPatterns = {
		UrlConst.TASK_LIST,
		UrlConst.CREATE_TASK
})
public class TaskServlet extends HttpServlet{

	private static final long serialVersionUID = -4094289534816596435L;
	private TaskService taskService;
	private UserService userService;
	private StatusService statusService;
	private ProjectService projectService;
	
	@Override
	public void init() throws ServletException {
		super.init();
		taskService = new TaskService();
		userService = new UserService();
		statusService = new StatusService();
		projectService = new ProjectService();
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = request.getServletPath();
		switch (path) {
		case UrlConst.TASK_LIST:
			if (request.getParameter("id") != null) {
				int taskId = Integer.parseInt(request.getParameter("id"));
				taskService.deleteTask(taskId);
			}
			request.setAttribute("tasks", taskService.getTask());
			request.setAttribute("users", userService.getUser());
			request.getRequestDispatcher(JspConst.TASK_LIST).forward(request, response);
			break;
		case UrlConst.CREATE_TASK:
			if (request.getParameter("id") != null) {
				int taskId = Integer.parseInt(request.getParameter("id"));
				request.setAttribute("task", taskService.findOneByTaskId(taskId));
			}
			request.setAttribute("users", userService.findByRoleId(3));
			request.setAttribute("projects", projectService.getProject());
			request.setAttribute("statuses", statusService.getStatus());
			request.getRequestDispatcher(JspConst.CREATE_TASK).forward(request, response);
			break;
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		int assginee = Integer.parseInt(request.getParameter("assignee"));
		String description = request.getParameter("description");
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		int project_id = Integer.parseInt(request.getParameter("projectId"));
		int status_id = Integer.parseInt(request.getParameter("statusId"));
			
		Task task = new Task();
		task.setName(name);
		task.setAssignee(assginee);
		task.setDescription(description);
		task.setStartDate(DateConverter.convertStringToDateInSql(startDate));
		task.setEndDate(DateConverter.convertStringToDateInSql(endDate));
		task.setProjectId(project_id);
		task.setStatusId(status_id);
		
		if(request.getParameter("id") == null) { // Add Task
			if (taskService.insertTask(task)) {
				request.setAttribute("message", "Thêm thành công");
				request.setAttribute("alert", "success");
			} else {
				request.setAttribute("message", "Thêm thất bại. Ngày phải trong khoảng thời gian làm project");
				request.setAttribute("alert", "danger");
			}
		}else { // Edit Task
			int id = Integer.parseInt(request.getParameter("id"));
			task.setId(id);
			Task newTask = taskService.updateTask(task);
			if (newTask != null) {
				request.setAttribute("message", "Cập nhật thành công");
				request.setAttribute("alert", "success");
				request.setAttribute("task", newTask);
			} else {
				request.setAttribute("message", "Cập nhật thất bại. Ngày phải trong khoảng thời gian làm project");
				request.setAttribute("alert", "danger");
				request.setAttribute("task", task);
			}
		}
		request.setAttribute("users", userService.findByRoleId(3));
		request.setAttribute("projects", projectService.getProject());
		request.setAttribute("statuses", statusService.getStatus());
		request.getRequestDispatcher(JspConst.CREATE_TASK).forward(request, response);

	}
}
