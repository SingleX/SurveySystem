package com.atoz.survey.po;
/**
 * JavaBean:Login
 * 
 * @author SingleX
 *
 */
public class Login {
	
	private String userName;//用户名
	private String userPassword;//密码
	private boolean admin = false;//用户角色
	private boolean login = false;//是否登录
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public boolean isAdmin() {
		return admin;
	}
	public void setAdmin(boolean admin) {
		this.admin = admin;
	}
	public boolean isLogin() {
		return login;
	}
	public void setLogin(boolean login) {
		this.login = login;
	}
	public Login(String userName, String userPassword, boolean admin, boolean login) {
		super();
		this.userName = userName;
		this.userPassword = userPassword;
		this.admin = admin;
		this.login = login;
	}
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}
}
