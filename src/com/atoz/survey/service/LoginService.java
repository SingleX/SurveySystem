package com.atoz.survey.service;

import com.atoz.survey.po.Login;

public interface LoginService {
	
	Login loginInfo(String userName, String userPassword);
	
}
