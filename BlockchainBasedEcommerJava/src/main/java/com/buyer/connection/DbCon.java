package com.buyer.connection;

import java.sql.*;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbCon {
	public static Connection con = null;
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		if(con == null) {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmersportal","root","root");
			System.out.println("connected");
		}
		return con;
	}
}
