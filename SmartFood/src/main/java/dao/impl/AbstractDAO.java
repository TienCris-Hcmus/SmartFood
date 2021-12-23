package dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;

import dao.GenericDAO;
import mapper.RowMapper;

public class AbstractDAO<T> implements GenericDAO<T>{
	//Lấy dữ liệu từ file db.properties trong folder resources
	ResourceBundle rb = ResourceBundle.getBundle("db");
	
	//Kết nối connection
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
	
	//Lấy dữ liệu từ sql và truyền vào 1 list
	@Override
	public <T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters) {
		List<T> results = new ArrayList<T>();
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			connection = getConnection();
			statement = connection.prepareStatement(sql);
			setParameter(statement, parameters);
			resultSet =  statement.executeQuery();
			while(resultSet.next()) {
				//Với mỗi resultSet thì ánh xạ dữ liệu vào rowMapper rồi trả về T
				results.add(rowMapper.mapRow(resultSet));
			}
			return results;
		} catch (SQLException e) {
			return null;
		}finally {
			try {
				if(connection != null) {
					connection.close();
				}
				if(statement != null) {
					statement.close();
				}
				if(resultSet != null) {
					resultSet.close();
				}
			} catch (SQLException e) {	
				return null;
			}
		}
	}
	
	protected void setParameter(PreparedStatement stament, Object... parameters) {
		try {
			for(int i = 0; i < parameters.length;i++) {
				int index = i+1;
				Object parameter = parameters[i];
				if(parameter instanceof String) {
					stament.setString(index, (String)parameter);
				}else if (parameter instanceof Integer) {
					stament.setInt(index, (int) parameter);
				}else if (parameter instanceof Timestamp) {
					stament.setTimestamp(index, (Timestamp) parameter);
				}
			}
		} catch (SQLException e) {
		}
		
	}

	@Override
	public int count(String sql, Object... parameters) {
		Connection connection = null;
		PreparedStatement stament = null;
		ResultSet resultSet = null;
		try {
			int count = 0;
			connection = getConnection();
			stament = connection.prepareStatement(sql);
			setParameter(stament, parameters);
			resultSet = stament.executeQuery();
			while (resultSet.next()) {
				count = resultSet.getInt(1);
			}
			return count;
		} catch (SQLException e) {
			return 0;
		} finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (stament != null) {
					stament.close();
				}
				if (resultSet != null) {
					resultSet.close();
				}
			} catch (SQLException e) {
				return 0;
			}
		}
	}

	@Override
	public void update(String sql, Object... parameters) {
		Connection connection = null;
		PreparedStatement stament = null;
		try {
			connection = getConnection();
			connection.setAutoCommit(false);
			stament = connection.prepareStatement(sql);
			setParameter(stament, parameters);
			stament.executeUpdate();
			connection.commit();
		} catch (SQLException e) {
			if(connection!=null) {
				try {
					connection.rollback();
				} catch (Exception e2) {
				}
			}
		}finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (stament != null) {
					stament.close();
				}
			} catch (Exception e2) {
			}
		}
		
	}

}
