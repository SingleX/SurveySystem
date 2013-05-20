package com.atoz.survey.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.util.Properties;

import com.atoz.survey.dao.LoginDao;
import com.atoz.survey.service.LoginService;

public class LoginServiceImpl implements LoginService {

	File file = new File("Config.properties");
	Properties properties =new Properties();
	
	String loginDaoString = "";
	LoginDao loginDao = null;
	
	public void loadConfig(){
		try {
			properties.load(new FileInputStream(file));
			loginDaoString = properties.getProperty("loginDao");
			loginDao = (LoginDao) Class.forName(loginDaoString).newInstance();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Loading Config.properties Failed!");
		}
	}
	
	public boolean isValidateUser(String userName, String userPassword) {
		// TODO Auto-generated method stub
		loadConfig();
		return loginDao.isValidateUser(userName, userPassword);
	}

	public boolean isLogin(String userName) {
		// TODO Auto-generated method stub
		loadConfig();
		return loginDao.isLogin(userName);
	}

	public boolean isAdmin(String userName) {
		// TODO Auto-generated method stub
		loadConfig();
		return loginDao.isAdmin(userName);
	}

}
