<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+   ":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'sucess.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bookstrap-responsive.min.css" rel="stylesheet" type="text/css">
	<!--[if lt IE 9]>
      	<script src="js/html5shiv.js"></script>
    <![endif]-->
	<script src="js/jquery-1.9.1.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/bootstrap.js"></script>
  <script src="js/html5shiv.js"></script>
  <style type="text/css">
  
  	.mid{
  		text-align:center;
  		margin-top:150px;
  	}
  </style>

  </head>
  
  <body>
     <div class="container">
  	<div class="masthead">
  		<ul class="nav nav-pills pull-right">
  			<li><a href="#myMadel"  role="button" class="btn" data-toggle="modal"> 登陆</a></li>
  			<li><a href="#"  class="btn" data-toggle="modal"> 注册</a></li>
  		</ul>
  		<h1>iwen</h1>
  	</div>
  	<hr>
  	<hr>
  	<div class="mid">
  		<label>
  			
  			<%
  			String resultString = request.getParameter("sumbit");
  			int result = Integer.parseInt(resultString);
  			if(result == 1){%>
  			<a href="home.jsp">发布成功，返回个人主页</a>
  			<%}
  			else{
  			%>
  			问卷回答成功！<a href="index.jsp">返回主页</a>
  			<% 
  			}
  			 %>
  			
  		</label>
  	</div>
  </body>
</html>
