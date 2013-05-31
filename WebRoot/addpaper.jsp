<%@page import="com.atoz.survey.po.Login"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE>
<html lang="en">
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addsurvey.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
	<style type="text/css">
		body {
			padding-top: 20px;
			padding-bottom: 40px;
		}
		.container1{
			margin:auto;
			width:960px;
		}
		/*内容部分*/
		.maincontent{
			margin-top:40px;
			height:auto;
		}
		.right-button{
			border-width:3px;
			border-color:red;
			margin:0;
			padding:30px 0px 0px 3px;
		}
		.buttonspace{
			margin-left:20px;
			padding:20px 0px 0px 3px; 
		}
		/*热门推荐等格式*/
		.marketing p + h4 {
			margin-top: 28px;
		}
		.nav-pills > li > a {
			padding-top: 2px;
		}
		.fabu a {
			color: #FFFFFF;
			text-decoration: none;
		}
		#inputTitle {
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
  <%
  	Login login = (Login) session.getAttribute("loginInfo");
   %>
    <div class="container1">
    	<div class="masthead">
    		<ul class="nav nav-pills pull-right">
    			<li>当前登录：<%=login.getUserName() %></li>
    			<%
    				if(login.isAdmin()){
    			%>
    			<li>&nbsp;</li>
    			<li><a href="admin.jsp">后台管理</a></li>
    			<%
    				}
    			 %>
    		</ul>
    		<h1><a href="index.jsp">iWen</a></h1>
    	</div>
    	<hr>
    	<div class="maincontent">
    		<form action="addPaper" method="post" class="form-horizontal">
    			
				    <h3>发布问卷</h3>
				    <div class="control-group">
					    <label class="control-label" for="inputTitle">问卷标题</label>
					    <div class="controls">
					      <input type="text" id="inputTitle" placeholder="输入问卷标题" name="paperTitle">
					    </div>
				    </div>
				    <div class="control-group">
					    <label class="control-label" for="inputType" >问卷类别</label>
					    <div class="controls">
					      <select name="paperType">
					      	<option value="1">美食</option>
					      	<option value="2">科技</option>
					      	<option value="3">IT</option>
					      	<option value="4">医疗</option>
					      	<option value="5">手机</option>
					      </select>
					    </div>
				    </div>
				    <div class="control-group">
					    <label class="control-label" for="inputPaperSummary">问卷摘要介绍</label>
					    <div class="controls">
					      <textarea rows="3" cols="50" placeholder="输入问卷摘要" id="inputPaperSummary" name="paperSummary"></textarea>
					    </div>
				    </div>
				    <div class="control-group">
					    <h5>选择背景图片:</h5>
					    <label class="checkbox inline">
						  <input type="checkbox" id="inlineCheckbox1" value="img/06.jpg" name="paperBg">
						  <img alt="rupe" src="img/06.jpg" width="130px" height="120px">
						</label>
						<label class="checkbox inline">
						  <input type="checkbox" id="inlineCheckbox2" value="img/06.jpg" name="paperBg"> 
						   <img alt="rupe" src="img/06.jpg" width="130px" height="120px">
						</label>
						<label class="checkbox inline">
						  <input type="checkbox" id="inlineCheckbox3" value="img/06.jpg" name="paperBg"> 
						   <img alt="rupe" src="img/06.jpg" width="130px" height="120px">
						</label>
						<label class="checkbox inline">
						  <input type="checkbox" id="inlineCheckbox3" value="img/06.jpg" name="paperBg"> 
						   <img alt="rupe" src="img/06.jpg" width="130px" height="120px">
						</label>
						<label class="checkbox inline">
						  <input type="checkbox" id="inlineCheckbox3" value="img/06.jpg" name="paperBg"> 
						   <img alt="rupe" src="img/06.jpg" width="130px" height="120px">
						</label>
					</div>
					<br>
					<div class="control-group">
						<input type="reset" value="重置" class="btn btn-success" >
						<input type="submit" class="btn btn-success" value="下一步">
					</div>				    
    		</form>
    	</div>
</div>

  </body>
</html>
