package com.atoz.survey.dao.mysqlimpl;

import com.atoz.survey.dao.LoginDao;
import com.atoz.survey.po.Login;
import com.atoz.survey.po.User;

public class LoginDaoImpl extends BaseDao implements LoginDao {

	public Login loginInfo(String userName, String userPassword) {
		// TODO Auto-generated method stub
		if (userName == "" || userPassword == "") {
			return null;
		}
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
		if (user != null && userName.equals(user.getUserName()) && userPassword.equals(user.getUserPassword())) {
			login = new Login();
			login.setUserName(user.getUserName());
			login.setUserPassword(user.getUserPassword());
			login.setUserRole(user.getUserRole());
			login.setSuccess(true);
		}
		return login;
	}
}
