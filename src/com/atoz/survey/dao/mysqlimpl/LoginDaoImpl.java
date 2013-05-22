package com.atoz.survey.dao.mysqlimpl;

import com.atoz.survey.dao.LoginDao;
import com.atoz.survey.po.Login;
import com.atoz.survey.po.User;

public class LoginDaoImpl extends BaseDao implements LoginDao {

	public Login loginInfo(String userName, String userPassword) {
		// TODO Auto-generated method stub
		User user = null;
		Login login = null;
		getConn();
		String sql = "SELECT * FROM Users WHERE userName = ?";
		doQuery(sql, userName);
		try {
			if (rs.next()) {
				user = new User();
				user.setUserName(rs.getString(2));
				user.setUserPassword(rs.getString(3));
				user.setUserRole(rs.getInt(8));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		closeAll();
		login = new Login();
		if (user != null && userName.equals(user.getUserName()) && userPassword.equals(user.getUserPassword())) {
			login.setUserName(user.getUserName());
			login.setUserPassword(user.getUserPassword());
			login.setLogin(true);
			if (user.getUserRole() == 0) {
				login.setAdmin(true);
			}
		} else {
			login.setUserName(userName);
			login.setUserPassword(userPassword);
			login.setLogin(false);
			login.setAdmin(false);
		}
		return login;
	}
}
