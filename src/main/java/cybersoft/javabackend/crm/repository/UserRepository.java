package cybersoft.javabackend.crm.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import cybersoft.javabackend.crm.db.DbQuery;
import cybersoft.javabackend.crm.db.MySQLConnection;
import cybersoft.javabackend.crm.entity.Role;
import cybersoft.javabackend.crm.entity.User;
public class UserRepository {

	public List<User> getUsers() {
		List<User> users = new LinkedList<User>();
		Connection connection = null;
		try {
			connection = MySQLConnection.getConnection();
			String query = DbQuery.USER_WITH_ROLE;
			
			PreparedStatement statement = connection.prepareStatement(query);
			ResultSet rs = statement.executeQuery();
			
			while(rs.next()) {
				User user = new User();
				
				user.setId(rs.getInt("user_id"));
				user.setName(rs.getString("user_name"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setAddress(rs.getString("address"));
				user.setPhone(rs.getString("phone"));
				
				
				Role role = new Role();
				role.setId(rs.getInt("role_id"));
				role.setName(rs.getString("role_name"));
				role.setDescription(rs.getString("role_description"));
				
				user.setRole(role);
				
				users.add(user);
			}
		} catch (SQLException e) {
			System.out.println("Không thể kết nối đến cơ sở dữ liệu");
			e.printStackTrace();
		} 
		
		return users;
	}
	public int updatePassword(String email,String password) {
		
		
		try {
			Connection connection = MySQLConnection.getConnection();
			String query= DbQuery.UPDATE_PASSWORD;
			PreparedStatement statement = connection.prepareStatement(query);
			
			statement.setString(1,password);
			statement.setString(2,email);
			return statement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Không thể kết nối đến cơ sở dữ liệu");
			e.printStackTrace();
		}
		return 0;
	}
	public int addUser(User user) {
		
		try {
			Connection connection = MySQLConnection.getConnection();
			String query = DbQuery.ADD_USER;
			PreparedStatement statement = connection.prepareStatement(query);
			
			statement.setString(1,user.getName());
			statement.setString(2,user.getEmail());
			statement.setString(3,user.getPassword());
			
			return statement.executeUpdate();
		}
		catch(SQLException e) {
			System.out.println("Không thể kết nối đến cơ sở dữ liệu");
			e.printStackTrace();
		}
		return 0;
	}
	public int deleteUser(int id) {
		try {
			Connection connection= MySQLConnection.getConnection();
			
			String query=DbQuery.DELETE_USER;
			
			PreparedStatement statement= connection.prepareStatement(query);
			
			statement.setInt(1,id);
			return statement.executeUpdate();
		}
		catch(SQLException e) {
			System.out.println("Không thể kết nối đến cơ sở dữ liệu");
			e.printStackTrace();
		}
		return 0;
	}
}
