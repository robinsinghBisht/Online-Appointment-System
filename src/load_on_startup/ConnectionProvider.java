package load_on_startup;

import java.sql.*;

public class ConnectionProvider {
	public static Connection con = null;

	public static Connection getConn() throws SQLException {
		if (con == null || con.isClosed()) {
			try {
				String driver = System.getProperty("driver");
				String url = System.getProperty("url");
				String user = System.getProperty("user");
				String pass = System.getProperty("pass");
				Class.forName(driver);
				con = DriverManager.getConnection(url, user, pass);

			} catch (Exception e) {
				e.printStackTrace();
				con.close();
			}
		}
		return con;
	}

}