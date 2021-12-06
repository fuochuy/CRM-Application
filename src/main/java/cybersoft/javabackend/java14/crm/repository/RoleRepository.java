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

public class RoleRepository {
	private Connection connection = null;
	private PreparedStatement statement = null;
	private ResultSet rs = null;

	public List<Role> getRole() {
		List<Role> roles = new LinkedList<Role>();
		try {
			connection = MySQLConnection.getConnection();
			String query = DbConst.GET_ROLES;

			statement = connection.prepareStatement(query);
			rs = statement.executeQuery();

			while (rs.next()) {
				Role role = new Role();
				role.setId(rs.getInt("id"));
				role.setName(rs.getString("name"));
				role.setDescription(rs.getString("description"));

				roles.add(role);
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
		return roles;
	}
}
