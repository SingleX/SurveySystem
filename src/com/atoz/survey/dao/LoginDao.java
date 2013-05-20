package com.atoz.survey.dao;

import com.atoz.survey.po.Login;

public interface LoginDao {

	Login loginInfo(String userName, String userPassword);
}
