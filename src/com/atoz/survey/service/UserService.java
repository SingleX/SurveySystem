package com.atoz.survey.service;

import java.util.List;

import com.atoz.survey.po.User;

public interface UserService {
	
	List<User> findAllUsers();
	
	User findUserByUserId(int userId);
	User findUserByUserName(String userName);

	boolean isValidateUser(String userName, String userPassword);
	boolean	isLogin(String userName);
	boolean	isAdmin(String userName);
	
	int addUsers(User user);
	int modifyUsers(User user);
	int deleteUsers(int userId);
}