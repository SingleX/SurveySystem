package com.atoz.survey.po;
/**
 * JavaBean：User
 * 
 * @author SingleX
 *
 */
public class User {
	private int userId;//ID号
	private String userName;//用户名
	private String userPassword;//用户密码
	private String userIcon;//用户头像
	private String userMail;//邮箱
	private String userReg;//注册日期
	private String userSex;//性别
	private String userRole;//用户角色（注册用户，管理员）
	private String userPaperId;//用户问卷号
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
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
	public String getUserIcon() {
		return userIcon;
	}
	public void setUserIcon(String userIcon) {
		this.userIcon = userIcon;
	}
	public String getUserMail() {
		return userMail;
	}
	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}
	public String getUserReg() {
		return userReg;
	}
	public void setUserReg(String userReg) {
		this.userReg = userReg;
	}
	public String getUserSex() {
		return userSex;
	}
	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}
	public String getUserRole() {
		return userRole;
	}
	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}
	public String getUserPaperId() {
		return userPaperId;
	}
	public void setUserPaperId(String userPaperId) {
		this.userPaperId = userPaperId;
	}
}
