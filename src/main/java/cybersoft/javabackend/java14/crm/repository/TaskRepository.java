package cybersoft.javabackend.java14.crm.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import cybersoft.javabackend.java14.crm.db.DbConst;
import cybersoft.javabackend.java14.crm.db.MySQLConnection;
import cybersoft.javabackend.java14.crm.entity.Project;
import cybersoft.javabackend.java14.crm.entity.Status;
import cybersoft.javabackend.java14.crm.entity.Task;
import cybersoft.javabackend.java14.crm.entity.User;

public class TaskRepository {
	private Connection connection = null;
	private PreparedStatement statement = null;
	private ResultSet rs = null;

	public List<Task> getTask() {
		List<Task> tasks = new LinkedList<Task>();
		try {
			connection = MySQLConnection.getConnection();
			String query = DbConst.GET_TASKS;

			statement = connection.prepareStatement(query);
			rs = statement.executeQuery();

			while (rs.next()) {
				Task task = new Task();
				task.setId(rs.getInt("t.id"));
				task.setAssignee(rs.getInt("t.assignee"));
				task.setDescription(rs.getString("t.description"));
				task.setStartDate(rs.getDate("t.start_date"));
				task.setEndDate(rs.getDate("t.end_date"));
				task.setName(rs.getString("t.name"));
				task.setStatusId(rs.getInt("t.status_id"));
				
				Status status = new Status();
				status.setName(rs.getString("s.name"));
				status.setDescription(rs.getString("s.description"));
				task.setStatus(status);
				
				Project project = new Project();
				project.setName(rs.getString("p.name"));
				project.setDescription(rs.getString("p.description"));
				project.setStartDate(rs.getDate("p.start_date"));
				project.setEndDate(rs.getDate("p.end_date"));
				project.setCreateBy(rs.getInt("p.create_by"));
				task.setProject(project);
				
				User user = new User();
				user.setName(rs.getString("u.name"));
				user.setEmail(rs.getString("u.email"));
				user.setPassword(rs.getString("u.password"));
				user.setPhone(rs.getString("u.phone"));
				user.setAddress(rs.getString("u.address"));
				user.setRoleId(rs.getInt("u.role_id"));
				task.setUser(user);
				
				tasks.add(task);
			}
		} catch (SQLException e) {
			System.out.println("Không thể kết nối đến cơ sở dữ liệu");
			e.printStackTrace();
		} finally {
			try {
				connection.close();
				statement.close();
				rs.close();
			} catch (SQLException e) {
				System.out.println("Lỗi đóng kết nối");
				e.printStackTrace();
			}
		}
		return tasks;
	}
	
	public Task getTaskById(int id) {
		try {
			connection = MySQLConnection.getConnection();
			String query = DbConst.GET_TASK_BY_ID;

			statement = connection.prepareStatement(query);
			statement.setInt(1, id);
			rs = statement.executeQuery();

			while (rs.next()) {
				Task task = new Task();
				task.setId(rs.getInt("t.id"));
				task.setAssignee(rs.getInt("t.assignee"));
				task.setDescription(rs.getString("t.description"));
				task.setStartDate(rs.getDate("t.start_date"));
				task.setEndDate(rs.getDate("t.end_date"));
				task.setName(rs.getString("t.name"));
				task.setProjectId(rs.getInt("t.project_id"));
				task.setStatusId(rs.getInt("t.status_id"));
				
				Status status = new Status();
				status.setName(rs.getString("s.name"));
				status.setDescription(rs.getString("s.description"));
				task.setStatus(status);
				
				Project project = new Project();
				project.setName(rs.getString("p.name"));
				project.setDescription(rs.getString("p.description"));
				project.setStartDate(rs.getDate("p.start_date"));
				project.setEndDate(rs.getDate("p.end_date"));
				project.setCreateBy(rs.getInt("p.create_by"));
				task.setProject(project);
				
				User user = new User();
				user.setName(rs.getString("u.name"));
				user.setEmail(rs.getString("u.email"));
				user.setPassword(rs.getString("u.password"));
				user.setPhone(rs.getString("u.phone"));
				user.setAddress(rs.getString("u.address"));
				user.setRoleId(rs.getInt("u.role_id"));
				task.setUser(user);
								
				return task;
			}
		} catch (SQLException e) {
			System.out.println("Không thể kết nối đến cơ sở dữ liệu");
			e.printStackTrace();
		} finally {
			try {
				connection.close();
				statement.close();
				rs.close();
			} catch (SQLException e) {
				System.out.println("Lỗi đóng kết nối");
				e.printStackTrace();
			}
		}
		return null;
	}
	
	public int insertTask(Task task) {
		try {
			connection = MySQLConnection.getConnection();
			String query = DbConst.INSERT_TASK;

			statement = connection.prepareStatement(query);

			statement.setString(1, task.getName());
			statement.setInt(2, task.getAssignee());
			statement.setString(3, task.getDescription());
			statement.setDate(4, task.getStartDate());
			statement.setDate(5, task.getEndDate());
			statement.setInt(6, task.getProjectId());
			statement.setInt(7, task.getStatusId());

			return statement.executeUpdate();
		} catch (SQLException e) {
			System.out.println("Không thể kết nối đến cơ sở dữ liệu");
			e.printStackTrace();
		} finally {
			try {
				connection.close();
				statement.close();
			} catch (SQLException e) {
				System.out.println("Lỗi đóng kết nối");
				e.printStackTrace();
			}
		}
		return 0;

	}
	
	public int updateTask(Task task) {
		try {
			connection = MySQLConnection.getConnection();
			String query = DbConst.UPDATE_TASK;

			statement = connection.prepareStatement(query);

			statement.setString(1, task.getName());
			statement.setInt(2, task.getAssignee());
			statement.setString(3, task.getDescription());
			statement.setDate(4, task.getStartDate());
			statement.setDate(5, task.getEndDate());
			statement.setInt(6, task.getProjectId());
			statement.setInt(7, task.getStatusId());
			statement.setInt(8, task.getId());

			return statement.executeUpdate();
		} catch (SQLException e) {
			System.out.println("Không thể kết nối đến cơ sở dữ liệu");
			e.printStackTrace();
		} finally {
			try {
				connection.close();
				statement.close();
			} catch (SQLException e) {
				System.out.println("Lỗi đóng kết nối");
				e.printStackTrace();
			}
		}
		return 0;
	}
	
	public int deleteTask(int id) {
		try {
			connection = MySQLConnection.getConnection();
			String query = DbConst.DELETE_TASK;

			statement = connection.prepareStatement(query);

			statement.setInt(1, id);

			return statement.executeUpdate();
		} catch (SQLException e) {
			System.out.println("Không thể kết nối đến cơ sở dữ liệu TaskRepository");
			e.printStackTrace();
		} finally {
			try {
				connection.close();
				statement.close();
			} catch (SQLException e) {
				System.out.println("Lỗi kết nối cơ sở dữ liệu TaskRepository");
				e.printStackTrace();
			}
		}
		return 0;

	}
	
}
