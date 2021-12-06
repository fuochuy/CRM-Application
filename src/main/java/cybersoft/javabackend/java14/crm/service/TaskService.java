package cybersoft.javabackend.java14.crm.service;

import java.util.List;

import cybersoft.javabackend.java14.crm.entity.Project;
import cybersoft.javabackend.java14.crm.entity.Task;
import cybersoft.javabackend.java14.crm.repository.TaskRepository;

public class TaskService {
	private TaskRepository taskRepository;
	private ProjectService projectService;
	
	public TaskService() {
		taskRepository = new TaskRepository();
	}
	
	public List<Task> getTask() {
		return taskRepository.getTask();
	}
	
	public Task findOneByTaskId(int id) {
		return taskRepository.getTaskById(id);
	}
	
	public boolean insertTask(Task task) {
		projectService = new ProjectService();
		Project project = projectService.getProjectById(task.getProjectId());
		if(project != null) {
			if(task.getStartDate().compareTo(project.getStartDate()) < 0 || task.getStartDate().compareTo(project.getEndDate()) > 0
				|| task.getEndDate().compareTo(project.getStartDate()) < 0 || task.getEndDate().compareTo(project.getEndDate()) > 0) {
				return false;
			}
		}
		return taskRepository.insertTask(task) == 1 ? true : false;
	}
	
	public Task updateTask(Task task) {
		projectService = new ProjectService();
		Project project = projectService.getProjectById(task.getProjectId());
		if(project != null) {
			if(task.getStartDate().compareTo(project.getStartDate()) < 0 || task.getStartDate().compareTo(project.getEndDate()) > 0
				|| task.getEndDate().compareTo(project.getStartDate()) < 0 || task.getEndDate().compareTo(project.getEndDate()) > 0) {
				return null;
			}
		}
		return taskRepository.updateTask(task) == 1 ? findOneByTaskId(task.getId()) : null;
	}
	
	public boolean deleteTask(int id) {
		return taskRepository.deleteTask(id) == 1 ? true : false;
	}
}
