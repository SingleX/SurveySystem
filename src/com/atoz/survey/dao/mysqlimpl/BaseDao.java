package com.atoz.survey.dao.mysqlimpl;

/**
 * Database BaseDao
 * 
 * @author SingleX
 */
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BaseDao {
	protected Connection conn;
	protected PreparedStatement pstmt;
	protected ResultSet rs;
	protected int result;

	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Loading Database Engine Failed !");
		}
	}

	/**
	 * Connect Database
	 */
	public void getConn() {
		String url = "jdbc:mysql://localhost:3306/survey?user=root&password=123456&useUnicode=true&characterEncoding=utf-8&autoReconnect=true&failOverReadOnly=false";
		try {
			conn = DriverManager.getConnection(url);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Database Conn Failed !");
		}
	}

	/**
	 * Close All Database Conn
	 */
	public void closeAll() {
		try {
			if (pstmt != null && !pstmt.isClosed()) {
				pstmt.close();
			}
			if (rs != null && !rs.isClosed()) {
				rs.close();
			}
			if (conn != null && !conn.isClosed()) {
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Close Database Conn ERROR !");
		}
	}

	/**
	 * Database Query
	 */
	public void doQuery(String sql, Object... params) {
		try {
			pstmt = conn.prepareStatement(sql);
			if (pstmt != null) {
				for (int i = 0; i < params.length; i++) {
					pstmt.setObject(i + 1, params[i]);
				}
			}
			rs = pstmt.executeQuery();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Database Query ERROR !");
		}
	}

	/**
	 * Database Operate
	 */
	public void doOperate(String sql, Object... params) {
		try {
			pstmt = conn.prepareStatement(sql);
			if (pstmt != null) {
				for (int i = 0; i < params.length; i++) {
					pstmt.setObject(i + 1, params[i]);
				}
			}
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Database Operate ERROR !");
		}
	}

	/**
	 * Check If Exist Tables
	 */
	boolean existTable(String tableName) {
		DatabaseMetaData meta;
		try {
			meta = conn.getMetaData();
			ResultSet rs = meta.getTables(null, null, tableName, null);
			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Check If Exits Tables Failed !");
		}
		return false;
	}

	/**
	 * Database Init
	 */
	public void doInit() {
		getConn();
		String sql = null;

		// Init table "Users"
		if (existTable("Users")) {
			sql = "DROP TABLE Users";
			doOperate(sql);
		} else {
			sql = "CREATE TABLE Users(userId INT PRIMARY KEY AUTO_INCREMENT, userName NVARCHAR(40), userPassword NVARCHAR(40), userIcon NVARCHAR(40), userMail NVARCHAR(40), userReg DATETIME, userSex int, userRole int)";
			doOperate(sql);
			sql = "INSERT INTO Users VALUES(NULL, 'admin', 'admin', 'admin.png', 'admin@singlex.net', '2012-12-12 12:12:12', '1', '0')";
			doOperate(sql);
		}
		// Init Table "Papers"
		if (existTable("Papers")) {
			sql = "DROP TABLE Papers";
			doOperate(sql);
		} else {
			sql = "CREATE TABLE Papers(paperId INT PRIMARY KEY AUTO_INCREMENT, userId INT, userName NVARCHAR(40), paperTitle NVARCHAR(100), paperSummary NVARCHAR(300), paperStartDate DATETIME, paperEndDate DATETIME, paperBg NVARCHAR(40), paperType INT, paperStatus INT, paperCount INT)";
			doOperate(sql);
			sql = "INSERT INTO Papers VALUES(NULL, '1', '0', 'admin', 'Test paper', 'This is a test paper! Enjoy it!', '2013-05-01 12:00:00', '2013-05-10 12:00:00', 'bg_01.png', '1', '1', '99')";
			doOperate(sql);
		}
		// Init Table "Questions"
		if (existTable("Questions")) {
			sql = "DROP TABLE Questions";
			doOperate(sql);
		} else {
			sql = "CREATE TABLE Questions(qstId INT PRIMARY KEY AUTO_INCREMENT, paperId INT, qstType INT, qstTile NVARCHAR(100), qstOption NVARCHAR(1000), qstAnswer NVARCHAR(1000))";
			doOperate(sql);
			sql = "INSERT INTO Questions VALUES(NULL, '1', '1', 'First Question', 'A:刘红军;B:李朋伟 ;C:袁佑 ;D:郭宝星', '4;2;3;2')";
			doOperate(sql);
		}
	}
}
