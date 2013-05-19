package com.atoz.survey.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.util.List;
import java.util.Properties;

import com.atoz.survey.dao.UserDao;
import com.atoz.survey.po.User;
import com.atoz.survey.service.UserService;

public class UserServiceImpl implements UserService {

	File file = new File("Config.properties");
	Properties properties = new Properties();

	String userDaoString = null;
	UserDao userDao = null;

	public void loadConfig() {
		try {
			properties.load(new FileInputStream(file));
			userDaoString = properties.getProperty("userDao");
			userDao = (UserDao) Class.forName(userDaoString).newInstance();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public List<User> findAllUsers() {
		// TODO Auto-generated method stub
		loadConfig();
		return userDao.findAllUsers();
	}

	public User findUserByUserId(int userId) {
		// TODO Auto-generated method stub
		loadConfig();
		return userDao.findUserByUserId(userId);
	}

	public User findUserByUserName(String userName) {
		// TODO Auto-generated method stub
		loadConfig();
		return userDao.findUserByUserName(userName);
	}

	public boolean isValidateUser(String userName, String userPassword) {
		// TODO Auto-generated method stub
		loadConfig();
		return userDao.isValidateUser(userName, userPassword);
	}

	public boolean isLogin() {
		// TODO Auto-generated method stub
		loadConfig();
		return userDao.isLogin();
	}

	public boolean isAdmin() {
		// TODO Auto-generated method stub
		loadConfig();
		return userDao.isAdmin();
	}

	public int addUsers(User user) {
		// TODO Auto-generated method stub
		loadConfig();
		return userDao.addUsers(user);
	}

	public int modifyUsers(User user) {
		// TODO Auto-generated method stub
		loadConfig();
		return userDao.modifyUsers(user);
	}

	public int deleteUsers(int userId) {
		// TODO Auto-generated method stub
		loadConfig();
		return userDao.deleteUsers(userId);
	}
}
