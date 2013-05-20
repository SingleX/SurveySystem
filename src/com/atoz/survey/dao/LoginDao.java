package com.atoz.survey.dao;

public interface LoginDao {

	boolean isValidateUser(String userName, String userPassword);
	boolean	isLogin(String userName);
	boolean	isAdmin(String userName);
}
