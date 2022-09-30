package com.flyaway.helper;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
	private static Connection con;

	public static Connection getConnection() {
		if (con == null) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway", "root", "root");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return con;
	}
}
