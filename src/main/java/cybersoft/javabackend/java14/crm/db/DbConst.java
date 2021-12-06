package cybersoft.javabackend.java14.crm.db;

public class DbConst {
	
	
	/*USER*/
	public static final String GET_USERS = "SELECT u.id, u.name, u.email, u.password, u.phone, "
			+ "u.address, u.role_id, r.id, r.name, r.description FROM crm_user AS u INNER JOIN "
			+ "crm_role AS r ON u.role_id = r.id ORDER BY u.role_id";
	
	public static final String GET_USER_BY_ID = "SELECT u.id, u.name, u.email, u.password, u.phone, "
			+ "u.address, u.role_id, r.id, r.name, r.description FROM crm_user AS u INNER JOIN "
			+ "crm_role AS r ON u.role_id = r.id WHERE u.id = ?";
	
	public static final String GET_USER_BY_ROLE = "SELECT u.id, u.name, u.email, u.password, "
			+ "u.phone, u.address, u.role_id, r.id, r.name, r.description FROM crm_user AS u "
			+ "INNER JOIN crm_role AS r ON u.role_id = r.id WHERE u.role_id = ?";
	
	public static final String INSERT_USER ="INSERT INTO crm_user(name, email, password, phone, "
			+ "address, role_id) VALUES (?,?,?,?,?,?)";
	
	public static final String UPDATE_USER ="UPDATE crm_user SET name = ?, email = ?, password = ?, "
			+ "phone = ?, address = ?, role_id = ? WHERE id = ?";
	
	public static final String DELETE_USER = "DELETE FROM crm_user WHERE id = ?";
	
	/*ROLE*/
	public static final String GET_ROLES ="SELECT id, name, description FROM crm_role";
	
	
	
	/*PROJECT*/
	public static final String GET_PROJECTS = "SELECT p.id, p.name, p.description, p.start_date,"
			+ " p.end_date, p.create_by, u.name, u.email, u.password, u.phone, u.address, u.role_id"
			+ " FROM crm_project AS p INNER JOIN crm_user AS u ON p.create_by = u.id ORDER BY p.id"
			+ " ASC";
	
	public static final String GET_PROJECT_BY_ID = "SELECT p.id, p.name, p.description, p.start_date,"
			+ " p.end_date, p.create_by, u.id, u.name, u.email, u.password, u.phone, u.address, "
			+ "u.role_id FROM crm_project AS p INNER JOIN crm_user AS u ON p.create_by = u.id "
			+ "WHERE p.id = ?";
	
	public static final String DELETE_PROJECT_BY_CREATEBY = "DELETE FROM crm_project WHERE create_by = ?";
	
	public static final String INSERT_PROJECT = "INSERT INTO crm_project(name, description, start_date, "
			+ "end_date, create_by) VALUES (?,?,?,?,?)";
	
	public static final String UPDATE_PROJECT = "UPDATE crm_project SET name = ?, description = ?, "
			+ "start_date = ?, end_date = ?, create_by = ? WHERE id = ?";
	
	public static final String DELETE_PROJECT = "DELETE FROM crm_project WHERE id = ?";

	
	
	/*STATUS*/
	public static final String GET_STATUS = "SELECT id, name, description FROM crm_status";
	
	
	
	/*TASK*/
	public static final String GET_TASKS = "SELECT t.id, t.assignee, t.description, t.start_date,"
			+ " t.end_date, t.name, t.project_id, t.status_id ,s.name, s.description, p.name, "
			+ "p.description, p.start_date, p.end_date, p.create_by, u.name, u.email, u.password,"
			+ " u.phone, u.address, u.role_id FROM crm_task AS t INNER JOIN crm_status AS s "
			+ "ON t.status_id = s.id INNER JOIN crm_project AS p ON t.project_id = p.id INNER "
			+ "JOIN crm_user AS u ON t.assignee = u.id ORDER BY t.project_id, t.status_id";
	
	public static final String GET_TASK_BY_ID = "SELECT t.id, t.assignee, t.description, t.start_date, "
			+ "t.end_date, t.name, t.project_id, t.status_id ,s.name, s.description, p.name, p.description, "
			+ "p.start_date, p.end_date, p.create_by, u.name, u.email, u.password, u.phone, u.address, "
			+ "u.role_id FROM crm_task AS t INNER JOIN crm_status AS s ON t.status_id = s.id INNER JOIN "
			+ "crm_project AS p ON t.project_id = p.id INNER JOIN crm_user AS u ON t.assignee = u.id "
			+ "WHERE t.id = ?";
	
	public static final String INSERT_TASK = "INSERT INTO crm_task(name, assignee ,description, start_date, "
			+ "end_date, project_id, status_id) VALUES (?,?,?,?,?,?,?)";
	
	public static final String UPDATE_TASK = "UPDATE crm_task SET name = ?, assignee = ?, description = ?, "
			+ "start_date = ?, end_date = ?, project_id = ?, status_id = ? WHERE id = ?";
	
	public static final String DELETE_TASK = "DELETE FROM crm_task WHERE id = ?";
}




