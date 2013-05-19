package com.atoz.survey.service.impl;

import java.io.File;
import java.util.List;
import java.util.Properties;

import com.atoz.survey.po.User;
import com.atoz.survey.service.UserService;

public class UserServiceImpl implements UserService {

	File file = new File("Config.properties");
	Properties properties = new Properties();
	
	public List<User> findAllUsers() {
		// TODO Auto-generated method stub
		return null;
	}

	public User findUserByUserId(int userId) {
		// TODO Auto-generated method stub
		return null;
	}

	public User findUserByUserName(String userName) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean isValidateUser(String userName, String userPassword) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean isLogin() {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean isAdmin() {
		// TODO Auto-generated method stub
		return false;
	}

	public int addUsers(User user) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int modifyUsers(User user) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int deleteUsers(int userId) {
		// TODO Auto-generated method stub
		return 0;
	}

}
