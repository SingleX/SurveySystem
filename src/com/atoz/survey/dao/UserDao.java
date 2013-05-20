package com.atoz.survey.dao;

import java.util.List;

import com.atoz.survey.po.User;

public interface UserDao {

	List<User> findAllUsers();
	
	User findUserByUserId(int userId);
	User findUserByUserName(String userName);
	
	int addUsers(User user);
	int modifyUsers(User user);
	int deleteUsers(int userId);
}
