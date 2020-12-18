package tools;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DatabaseConnection {

		private static final String JDBCPROPERTY = "jdbc.properties";

		private static String DBDRIVER = "com.mysql.jdbc.Driver";
		private static String DBURL = "jdbc:mysql://localhost:3306/product";
		private static String DBUSER = "root";
		private static String PASSWORD = "123";

		private Connection conn;


		static {
			try {
				Properties property = new Properties();

				InputStream is = DatabaseConnection.class.getResourceAsStream("/"+JDBCPROPERTY);
				property.load(new InputStreamReader(is, "utf-8"));
				is.close();
				DBDRIVER = property.getProperty("DBDRIVER");
				DBURL = property.getProperty("DBURL");
				DBUSER = property.getProperty("DBUSER");
				PASSWORD = property.getProperty("PASSWORD");

				Class.forName(DBDRIVER);
			} catch (Exception e) {
				e.printStackTrace();
			}

		}

		public DatabaseConnection() {
			try {
				this.conn = DriverManager.getConnection(DBURL, DBUSER, PASSWORD);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		public Connection getConnection() {
			return this.conn;
		}

		public void close() {
			if (this.conn != null) {
				try {
					this.conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}

			}

		}
	

}
