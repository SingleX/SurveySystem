package com.atoz.survey.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.util.Properties;

import com.atoz.survey.dao.LoginDao;
import com.atoz.survey.po.Login;
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

	public Login loginInfo(String userName, String userPassword) {
		// TODO Auto-generated method stub
		return loginDao.loginInfo(userName, userPassword);
	}
}
