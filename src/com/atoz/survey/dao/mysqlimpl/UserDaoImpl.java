package com.atoz.survey.dao.mysqlimpl;

import java.util.ArrayList;
import java.util.List;

import com.atoz.survey.dao.UserDao;
import com.atoz.survey.po.User;

public class UserDaoImpl extends BaseDao implements UserDao {

	public List<User> findAllUsers() {
		// TODO Auto-generated method stub
		List<User> users = new ArrayList<User>();
		getConn();
		String sql = "select * from Users";
		doQuery(sql);
		try {
			while (rs.next()) {
				User user = new User();
				user.setUserId(rs.getInt(1));
				user.setUserName(rs.getString(2));
				user.setUserPassword(rs.getString(3));
				user.setUserIcon(rs.getString(4));
				user.setUserMail(rs.getString(5));
				user.setUserReg(rs.getString(6));
				user.setUserSex(rs.getInt(7));
				user.setUserRole(rs.getInt(8));
				users.add(user);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		closeAll();
		return users;
	}

	public User findUserByUserId(int userId) {
		// TODO Auto-generated method stub
		User user = null;
		getConn();
		String sql = "SELECT * FROM Users WHERE userId = ?";
		doQuery(sql, userId);
		try {
			if(rs.next()){
				user = new User();
				user.setUserId(rs.getInt(1));
				user.setUserName(rs.getString(2));
				user.setUserPassword(rs.getString(3));
				user.setUserIcon(rs.getString(4));
				user.setUserMail(rs.getString(5));
				user.setUserReg(rs.getString(6));
				user.setUserSex(rs.getInt(7));
				user.setUserRole(rs.getInt(8));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		closeAll();
		return user;
	}

	public User findUserByUserName(String userName) {
		// TODO Auto-generated method stub
		User user = null;
		getConn();
		String sql = "SELECT * FROM Users WHERE userName = ?";
		doQuery(sql, userName);
		try {
			if(rs.next()){
				user = new User();
				user.setUserId(rs.getInt(1));
				user.setUserName(rs.getString(2));
				user.setUserPassword(rs.getString(3));
				user.setUserIcon(rs.getString(4));
				user.setUserMail(rs.getString(5));
				user.setUserReg(rs.getString(6));
				user.setUserSex(rs.getInt(7));
				user.setUserRole(rs.getInt(8));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		closeAll();
		return user;
	}

	public int addUsers(User user) {
		// TODO Auto-generated method stub
		getConn();
		String sql = "INSERT INTO Users VALUES(NULL, ?, ?, ?, ?, ?, ?, ?)";
		doOperate(sql, user.getUserName(), user.getUserPassword(), user.getUserIcon(), user.getUserMail(), user.getUserReg(), user.getUserSex(), user.getUserRole());
		closeAll();
		return 0;
	}

	public int modifyUsers(User user) {
		// TODO Auto-generated method stub
		getConn();
		String sql = "UPDATE Users SET userPassword = ?, userIcon = ?, userMail = ?, userReg = ?, userSex = ?, userRole = ? WHERE userId = ?";
		doOperate(sql, user.getUserPassword(), user.getUserIcon(), user.getUserMail(), user.getUserReg(), user.getUserSex(), user.getUserRole(), user.getUserId());
		closeAll();
		return 0;
	}

	public int deleteUsers(int userId) {
		// TODO Auto-generated method stub
		getConn();
		String sql = "DELETE FROM Users WHERE userId = ?";
		doOperate(sql, userId);
		closeAll();
		return 0;
	}
}
