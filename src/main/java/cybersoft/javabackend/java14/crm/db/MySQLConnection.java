package cybersoft.javabackend.java14.crm.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConnection {
	
	public static Connection getConnection() {
		String url = "jdbc:mysql://localhost:3306/CRM_Application";
		String userName = "root";
		String password = "1234";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection(url, userName, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
