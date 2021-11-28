package cybersoft.javabackend.crm.db;

public class DbQuery {
	public static final String USER_WITH_ROLE = "SELECT u.user_id,u.user_name, u.email, u.password,u.address,u.phone, u.role_id, r.role_name,r.role_description FROM users u, roles r where u.role_id=r.id";

	public static final String UPDATE_PASSWORD = "UPDATE users SET password = ? WHERE email= ? ";
	
	public static final String ADD_USER = "INSERT INTO users(user_name, email,password,role_id) value	(?,?,?,3)";
	public static final String DELETE_USER ="DELETE FROM users WHERE user_id=?";
}
