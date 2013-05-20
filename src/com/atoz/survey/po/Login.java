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
	private int userRole;//用户角色
	private boolean success = false;//是否登录
	
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
	public int getUserRole() {
		return userRole;
	}
	public void setUserRole(int userRole) {
		this.userRole = userRole;
	}
	public boolean isSuccess() {
		return success;
	}
	public void setSuccess(boolean success) {
		this.success = success;
	}
	public Login(String userName, String userPassword, int userRole, boolean success) {
		super();
		this.userName = userName;
		this.userPassword = userPassword;
		this.userRole = userRole;
		this.success = success;
	}
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}
}
