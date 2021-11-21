package cybersoft.javabackend.crm.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import cybersoft.javabackend.crm.util.DbConst;

public class MySQLConnection {

	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			try {
				return DriverManager.getConnection(DbConst.MYSQL_URL, DbConst.USERNAME, DbConst.PASSWORD);
			} catch (SQLException e) {
				System.out.println("Khong the ket noi den CSDL");
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			System.out.println("Khong tim thay driver MySQL Connection J.");
			e.printStackTrace();
		}
		return null;
	}
}
