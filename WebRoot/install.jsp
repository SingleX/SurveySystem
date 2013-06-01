<%@page import="java.sql.DatabaseMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>iWen-安装程序</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <br>-- 数据库准备初始化 --<br><br>
  <p align="left">
  <%
  	Connection conn;
  	PreparedStatement pstmt;
  	ResultSet rs;
	try {
		Class.forName("com.mysql.jdbc.Driver");
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	try {
		String sql = "";
		String url = "jdbc:mysql://localhost:3306/survey?user=root&password=123456&useUnicode=true&characterEncoding=utf-8&autoReconnect=true&failOverReadOnly=false";
		conn = DriverManager.getConnection(url);
		DatabaseMetaData meta;
		String[] tableName = {"Users", "Papers", "Questions"};
			meta = (DatabaseMetaData) conn.getMetaData();
			for(int i = 0; i < 3; i++){
				rs = meta.getTables(null, null, tableName[i], null);
				if(rs.next()){
					sql = "DROP TABLE " + tableName[i];
					pstmt = conn.prepareStatement(sql);
					pstmt.executeUpdate();
					out.print("删除已存在的表："+tableName[i]+"<br><br>");
				}
			}
			sql = "CREATE TABLE Users(userId INT PRIMARY KEY AUTO_INCREMENT, userName NVARCHAR(40), userPassword NVARCHAR(40), userIcon NVARCHAR(40) DEFAULT 'default_icon.png', userMail NVARCHAR(40), userReg DATETIME, userSex INT, userRole INT)";
			pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
			out.print("创建表成功：Users<br>");
			sql = "INSERT INTO Users VALUES(NULL, 'admin', 'admin', 'admin.png', 'admin@singlex.net', '2012-12-12 12:12:12', '1', '0')";
			pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
			out.print("插入数据成功：Users<br><br>");
			sql = "CREATE TABLE Papers(paperId INT PRIMARY KEY AUTO_INCREMENT, userId INT, paperTitle NVARCHAR(100), paperSummary NVARCHAR(300), paperStartDate DATETIME, paperEndDate DATETIME, paperBg NVARCHAR(40), paperType INT, paperStatus INT, paperCount INT)";
			pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
			out.print("创建表成功：Papers<br>");
			sql = "INSERT INTO Papers VALUES(NULL, '1', 'Test paper', 'This is a test paper! Enjoy it!', '2013-05-01 12:00:00', '2013-05-10 12:00:00', 'default_bg.png', '1', '1', '99')";
			pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
			out.print("插入数据成功：Papers<br><br>");
			sql = "CREATE TABLE Questions(qstId INT PRIMARY KEY AUTO_INCREMENT, paperId INT, qstType INT, qstTitle NVARCHAR(100), qstOption NVARCHAR(1000), qstAnswer NVARCHAR(1000))";
			pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
			out.print("创建表成功：Questions<br>");
			sql = "INSERT INTO Questions VALUES(NULL, '1', '1', 'First Question', 'A:刘红军#B:李朋伟 #C:袁佑 #D:郭宝星', '4&2&3&2')";
			pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
			out.print("插入数据成功：Questions<br>");
			pstmt.close();
			conn.close();
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
  
   %>
   </p>
    <br>-- 数据库初始化完成 --<br>
    <br>-- 为保证数据安全，安装成功后请删除install.jsp --<br>
  </body>
</html>
