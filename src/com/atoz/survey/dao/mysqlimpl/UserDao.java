package com.atoz.survey.dao.mysqlimpl;

import java.util.List;

import com.atoz.survey.po.User;

public interface UserDao {

List<User> findAllUsers();
	
	User findUserByUserId(int userId);
	User findUserByUserName(String userName);

	boolean isValidateUser(String userName, String userPassword);
	boolean	isLogin();
	boolean	isAdmin();
	
	int addUsers(User user);
	int modifyUsers(User user);
	int deleteUsers(int userId);
}
