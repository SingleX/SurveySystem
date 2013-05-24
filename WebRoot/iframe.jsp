<%@page import="com.atoz.survey.po.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>iWen</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
	<style type="text/css">
		h3 {
			text-align: center;
		}
		.path {
			margin-left: 10px;
		}
		thead {
			font-weight: bold;
		}
		.input-prepend {
			margin-left: 20px;
		}
		.input-prepend input {
			height: 30px;
			line-height: 30px;
		}
	</style>
	<!--[if lt IE 9]>
      	<script src="js/html5shiv.js"></script>
    <![endif]-->
    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
  </head>
  
  <body>
  	<h3>欢迎登录iWen后台管理系统</h3>
    <%
    	//查看所有用户
    	List<User> findAllUsers = (List<User>) session.getAttribute("users");
    	if( findAllUsers != null ){
    %>
    <span class="path"><i class="icon-home"></i> > 用户管理 > 查看所有用户</span>
    <hr>
    <table class="table table-hover">
    	<thead>
    		<td>ID</td>
    		<td>账号</td>
    		<td>密码</td>
    		<td>头像</td>
    		<td>邮箱</td>
    		<td>注册时间</td>
    		<td>性别</td>
    		<td>权限</td>
    	</thead>
    <%
    		for(User user : findAllUsers){
    %>
	    <tr>
	    	<td><%=user.getUserId() %></td>
	    	<td><%=user.getUserName() %></td>
	    	<td><%=user.getUserPassword() %></td>
	    	<td><%=user.getUserIcon() %></td>
	    	<td><%=user.getUserMail() %></td>
	    	<td><%=user.getUserReg() %></td>
	    	<td><%=(user.getUserSex()) == 1 ? "男":"女" %></td>
	    	<td><%=(user.getUserRole()) == 0 ? "管理员":"普通用户" %></td>
	    </tr>
    <%
    		}
    %>
    </table>
    <%
    	session.removeAttribute("users");
    	}
    	
    	//查找用户
    	String findUser = (String) session.getAttribute("findUser");
		if(findUser != null && findUser.equals("findUser")){
    %>
    <span class="path"><i class="icon-home"></i> > 用户管理 > 用户综合管理 > 查找用户</span>
    <hr>
    <form action="adminServlet" method="post">
    	<div class="input-prepend input-append">
    		<span class="add-on">根据用户ID查找</span>
			<input type="text" id="findUserByUserId" name="findUserByUserId" placeholder="请输入用户ID">
			<button class="btn" type="submit">Go!</button>
    	</div>
    </form>
    <form action="adminServlet" method="post">
    	<div class="input-prepend input-append">
    		<span class="add-on">根据用户名查找</span>
			<input type="text" id="findUserByUserName" name="findUserByUserName" placeholder="请输入用户名">
			<button class="btn" type="submit">Go!</button>
    	</div>
    </form>
    <%
    	session.removeAttribute("findUser");
    	}
    	User findUserResult = (User) session.getAttribute("findUserResult");
    	if( findUserResult != null ){
    %>
    <table class="table table-hover">
    	<thead>
    		<td>ID</td>
    		<td>账号</td>
    		<td>密码</td>
    		<td>头像</td>
    		<td>邮箱</td>
    		<td>注册时间</td>
    		<td>性别</td>
    		<td>权限</td>
    	</thead>
	    <tr>
	    	<td><%=findUserResult.getUserId() %></td>
	    	<td><%=findUserResult.getUserName() %></td>
	    	<td><%=findUserResult.getUserPassword() %></td>
	    	<td><%=findUserResult.getUserIcon() %></td>
	    	<td><%=findUserResult.getUserMail() %></td>
	    	<td><%=findUserResult.getUserReg() %></td>
	    	<td><%=findUserResult.getUserSex() %></td>
	    	<td><%=findUserResult.getUserRole() %></td>
	    </tr>
	</table>
    <%	
    	session.removeAttribute("findUserResult");
    	}
    	String addUser = (String) session.getAttribute("addUser");
    	if(addUser != null && addUser.equals("addUser")){
    %>
    <span class="path"><i class="icon-home"></i>> 用户管理 > 添加用户账号</span>
    <hr>
    <!-- form start -->
			<form class="form-horizontal" action="regServlet" method="post">
				<div class="control-group">
			    	<label class="control-label" for="inputUserName">用户名</label>
				    <div class="controls">
				    	<input type="text" id="inputUserName" name="inputUserName" placeholder="username">
				    </div>
			  	</div>
			  	<div class="control-group">
			    	<label class="control-label" for="inputPassword">密码</label>
				    <div class="controls">
				      	<input type="password" id="inputPassword" name="inputPassword" placeholder="password">
				    </div>
			  	</div>
			  	<div class="control-group">
			    	<label class="control-label" for="inputSex">性别</label>
			    	<div class="controls">
			    		<label class="radio">
			    			<input type="radio" name="inputSex" id="inputSex" value="1" checked> 男 
			    		</label>
			    		<label class="radio">
				      		<input type="radio" name="inputSex" id="inputSex" value="2"> 女
			    		</label>
			    	</div>
			  	</div>
			  	<div class="control-group">
			    	<label class="control-label" for="inputEmail">安全邮箱</label>
				    <div class="controls">
				    	<input type="email" id="inputEmail" name="inputEmail" placeholder="email">
				    </div>
			  	</div>
			  	<div class="control-group controls">
			      	<button type="submit" class="btn btn-success">添加账号</button>
			      	<button type="reset" class="btn">重置</button>
			  	</div>
			</form><!-- form end -->
    <%
    	session.removeAttribute("addUser");
    	}
    %>
  </body>
</html>
