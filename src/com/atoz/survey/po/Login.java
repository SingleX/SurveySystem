package com.atoz.survey.po;
/**
 * JavaBean:Login
 * 
 * @author SingleX
 *
 */
public class Login {
	
	private int userName;//用户名
	private String userPassword;//密码
	private int userRole;//用户角色
	private String rtnMsg = "";//登录返回消息
	private boolean success = false;//是否登录
	
	public int getUserName() {
		return userName;
	}
	public void setUserName(int userName) {
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
	public String getRtnMsg() {
		return rtnMsg;
	}
	public void setRtnMsg(String rtnMsg) {
		this.rtnMsg = rtnMsg;
	}
	public boolean isSuccess() {
		return success;
	}
	public void setSuccess(boolean success) {
		this.success = success;
	}
	public Login(int userName, String userPassword, int userRole, String rtnMsg, boolean success) {
		super();
		this.userName = userName;
		this.userPassword = userPassword;
		this.userRole = userRole;
		this.rtnMsg = rtnMsg;
		this.success = success;
	}
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}
}
