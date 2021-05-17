package br.com.core;
import java.sql.*;

public class ConnectionFactory {
	public Connection getConnection() {
		String url = "jdbc:mysql://127.0.0.1:3306/loto";
		String user = "root";
		String password = "root";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			throw new RuntimeException("Connection error: " + e);
		}
	}
}

