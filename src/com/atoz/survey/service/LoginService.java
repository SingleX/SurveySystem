package com.atoz.survey.service;

public interface LoginService {

	boolean isValidateUser(String userName, String userPassword);
	boolean	isLogin(String userName);
	boolean	isAdmin(String userName);
	
}
