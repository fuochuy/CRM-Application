package cybersoft.javabackend.java14.crm.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import cybersoft.javabackend.java14.crm.db.DbConst;
import cybersoft.javabackend.java14.crm.db.MySQLConnection;
import cybersoft.javabackend.java14.crm.entity.Status;

public class StatusRepository {
	private Connection connection = null;
	private PreparedStatement statement = null;
	private ResultSet rs = null;

	public List<Status> getStatus() {
		List<Status> statuses = new LinkedList<Status>();
		try {
			connection = MySQLConnection.getConnection();
			String query = DbConst.GET_STATUS;

			statement = connection.prepareStatement(query);
			rs = statement.executeQuery();

			while (rs.next()) {
				Status status = new Status();
				status.setId(rs.getInt("id"));
				status.setName(rs.getString("name"));
				status.setDescription(rs.getString("description"));

				statuses.add(status);
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
		return statuses;
	}
}
