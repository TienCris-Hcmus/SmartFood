package dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;
import java.util.ResourceBundle;

import dao.GenericDAO;
import mapper.RowMapper;

public class AbstractDAO implements GenericDAO{
	ResourceBundle rb = ResourceBundle.getBundle("db");
	
	public Connection getConnection() {
		try {
			Class.forName(rb.getString("driverName"));
			String url = rb.getString("url");
			String user = rb.getString("user");
			String password = rb.getString("password");
			return DriverManager.getConnection(url,user,password);
		} catch (ClassNotFoundException | SQLException e) {
			return null;
		}
	}
	
	@Override
	public <T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters) {
		return null;
	}
	
}
