package cybersoft.javabackend.java14.crm.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import cybersoft.javabackend.java14.crm.db.DbConst;
import cybersoft.javabackend.java14.crm.db.MySQLConnection;
import cybersoft.javabackend.java14.crm.entity.Role;
import cybersoft.javabackend.java14.crm.entity.User;

public class UserRepository {
	private Connection connection = null;
	private PreparedStatement statement = null;
	private ResultSet rs = null;

	public List<User> getUser() {
		List<User> users = new LinkedList<User>();
		try {
			connection = MySQLConnection.getConnection();
			String query = DbConst.GET_USERS;
			statement = connection.prepareStatement(query);
			rs = statement.executeQuery();

			while (rs.next()) {
				User user = new User();
				user.setId(rs.getInt("u.id"));
				user.setName(rs.getString("u.name"));
				user.setEmail(rs.getString("u.email"));
				user.setPassword(rs.getString("u.password"));
				user.setPhone(rs.getString("u.phone"));
				user.setAddress(rs.getString("u.address"));
				user.setRoleId(rs.getInt("u.role_id"));
				
				Role role = new Role();
				role.setName(rs.getString("r.name"));
				role.setDescription(rs.getString("r.description"));
				user.setRole(role);
			
				
				users.add(user);
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
		return users;
	}
	
	public User getUserById(int id) {
		try {
			connection = MySQLConnection.getConnection();
			String query = DbConst.GET_USER_BY_ID;

			statement = connection.prepareStatement(query);
			statement.setInt(1, id);
			rs = statement.executeQuery();

			while (rs.next()) {
				User user = new User();
				user.setId(rs.getInt("u.id"));
				user.setName(rs.getString("u.name"));
				user.setEmail(rs.getString("u.email"));
				user.setPassword(rs.getString("u.password"));
				user.setPhone(rs.getString("u.phone"));
				user.setAddress(rs.getString("u.address"));
				user.setRoleId(rs.getInt("u.role_id"));
				
				Role role = new Role();
				role.setName(rs.getString("r.name"));
				role.setDescription(rs.getString("r.description"));
				user.setRole(role);
				
				return user;
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

	public List<User> findByRoleId(int roleId) {
		List<User> users = new LinkedList<User>();
		try {
			connection = MySQLConnection.getConnection();
			String query = DbConst.GET_USER_BY_ROLE;

			statement = connection.prepareStatement(query);
			statement.setInt(1, roleId);
			rs = statement.executeQuery();

			while (rs.next()) {
				User user = new User();
				user.setId(rs.getInt("u.id"));
				user.setName(rs.getString("u.name"));
				user.setEmail(rs.getString("u.email"));
				user.setPassword(rs.getString("u.password"));
				user.setPhone(rs.getString("u.phone"));
				user.setAddress(rs.getString("u.address"));
				user.setRoleId(rs.getInt("u.role_id"));
				
				Role role = new Role();
				role.setName(rs.getString("r.name"));
				role.setDescription(rs.getString("r.description"));
				user.setRole(role);
				
				users.add(user);
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
		return users;
	}
	
	public int insertUser(User user) {
		try {
			connection = MySQLConnection.getConnection();
			String query = DbConst.INSERT_USER;

			statement = connection.prepareStatement(query);

			statement.setString(1, user.getName());
			statement.setString(2, user.getEmail());
			statement.setString(3, user.getPassword());
			statement.setString(4, user.getPhone());
			statement.setString(5, user.getAddress());
			statement.setInt(6, user.getRoleId());

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
	
	public int updateUser(User user) {
		try {
			connection = MySQLConnection.getConnection();
			String query = DbConst.UPDATE_USER;

			statement = connection.prepareStatement(query);

			statement.setString(1, user.getName());
			statement.setString(2, user.getEmail());
			statement.setString(3, user.getPassword());
			statement.setString(4, user.getPhone());
			statement.setString(5, user.getAddress());
			statement.setInt(6, user.getRoleId());
			statement.setInt(7, user.getId());

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
	
	public int deleteUser(int id) {
		try {
			connection = MySQLConnection.getConnection();
			String query = DbConst.DELETE_USER;

			statement = connection.prepareStatement(query);

			statement.setInt(1, id);

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
	
	public User checkLogIn(String email, String password) {

		try {
			connection = MySQLConnection.getConnection();
			StringBuilder query = new StringBuilder("SELECT u.id, u.name, u.email, u.password, u.phone, u.address, u.role_id, ");
			query.append("r.id, r.name, r.description FROM crm_user AS u INNER JOIN crm_role AS r ON u.role_id = r.id ");
			query.append(" WHERE email = ? AND password = ?");
			statement = connection.prepareStatement(query.toString());
			statement.setString(1, email);
			statement.setString(2, password);
			rs = statement.executeQuery();

			while (rs.next()) {
				User user = new User();
				user.setId(rs.getInt("u.id"));
				user.setName(rs.getString("u.name"));
				user.setEmail(rs.getString("u.email"));
				user.setPassword(rs.getString("u.password"));
				user.setPhone(rs.getString("u.phone"));
				user.setAddress(rs.getString("u.address"));
				user.setRoleId(rs.getInt("u.role_id"));
				
				Role role = new Role();
				role.setName(rs.getString("r.name"));
				role.setDescription(rs.getString("r.description"));
				user.setRole(role);
			
				
				return user;
			}
		} catch (SQLException e) {
			System.out.println("Không tìm thấy cơ sở dữ liệu");
			e.printStackTrace();
		} finally {
			try {
				connection.close();
				statement.close();
				rs.close();
			} catch (SQLException e) {
				System.out.println("Không thể kết nối đến cơ sở dữ liệu");
				e.printStackTrace();
			}
		}
		return null;
	}
}
