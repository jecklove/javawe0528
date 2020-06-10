package com.service;

import java.sql.SQLException;

import com.Dao.UserDao;
import com.entity.User;

public class UserService {
	
	private UserDao userDao = new UserDao();
	
	public int regist(User user) throws SQLException {
		return userDao.insert(user);
	}
	
	public User login(User user) throws SQLException {
		return userDao.login(user);
	}
}
