package zxn.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import zxn.dao.UserDao;
import zxn.domain.User;
import zxn.exception.DaoException;
import zxn.util.DBCPUtil;
import zxn.util.JDBCUtil;

public class UserDaoImpl implements UserDao {
	private QueryRunner qr = new QueryRunner(DBCPUtil.getDataSource());
	public void addUser(User user) {
		try {
			qr
					.update(
							"insert into user (id,username,password,cellphone,mobilephone,adress,email) values(?,?,?,?,?,?,?)",
							user.getId(), user.getUsername(), user
									.getPassword(), user.getCellphone(), user
									.getMobilephone(), user.getAdress(), user
									.getEmail());
		} catch (SQLException e) {
			throw new DaoException(e);
		}
	}
//	@Override
//	public User findUser(String username, String password) {
//		try {
//			Connection con = new JDBCUtil().getCon();
//			
//			User user = null;
//			String sql="select * from user where userName=? and password=?";
//			PreparedStatement preparedStatement = con.prepareStatement(sql);
//			preparedStatement.setString(1, username);
//			preparedStatement.setString(2, password);
//			ResultSet rsResultSet = preparedStatement.executeQuery();
//			while (rsResultSet.next()) {
//				user = new User();
//				user.setUsername(rsResultSet.getString("username"));
//				user.setPassword(rsResultSet.getString("password"));
//				user.setId(rsResultSet.getString("id"));
//				user.setCellphone(rsResultSet.getString("cellphone"));
//				user.setMobilephone(rsResultSet.getString("mobilephone"));
//				user.setAdress(rsResultSet.getString("adress"));
//				user.setEmail(rsResultSet.getString("email"));
//			}
//			return user;
//		} catch (Exception e1) {
//			throw new DaoException(e1);
//		}
//	}
	@Override
	public User findUser(String username, String password) {
		try {
			return qr.query("select * from user where username=? and password=?", new BeanHandler<User>(User.class), username,password);
		} catch (SQLException e) {
			throw new DaoException(e);
		}
	}
	

}
