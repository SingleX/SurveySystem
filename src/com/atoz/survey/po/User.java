package com.atoz.survey.po;
/**
 * JavaBean:User
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
	private int userSex;//性别    0-未知,1-男,2-女
	private int userRole;//用户角色    0-管理员,1-注册用户
	
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
	public int getUserSex() {
		return userSex;
	}
	public void setUserSex(int userSex) {
		this.userSex = userSex;
	}
	public int getUserRole() {
		return userRole;
	}
	public void setUserRole(int userRole) {
		this.userRole = userRole;
	}
	public User(int userId, String userName, String userPassword, String userIcon, String userMail, String userReg, int userSex, int userRole) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPassword = userPassword;
		this.userIcon = userIcon;
		this.userMail = userMail;
		this.userReg = userReg;
		this.userSex = userSex;
		this.userRole = userRole;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
}
