package com.Dao;

import java.sql.SQLException;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.entity.User;
import com.util.DataSourceUtil;

public class UserDao {

	public int insert(User user) throws SQLException {
		int result = 0;
		QueryRunner qr = new QueryRunner(DataSourceUtil.getDataSource());
		
		String sql = "insert into user(email,username,password) value(? ,? , ?)"; 
		result =  qr.update(sql,user.getEmail(),user.getUsername(),user.getPassword());
		
		return result;
	}

	public User login(User user) throws SQLException {
	
		QueryRunner qr = new QueryRunner(DataSourceUtil.getDataSource());
		
		String sql = "select * from user where username = ? and password = ?"; 
		return  qr.query(sql,new BeanHandler<>(User.class),user.getUsername(),user.getPassword());
		
		
	}

}
