<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <base href="<%=basePath%>">
    
    <title>iWen-在线问卷调查</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="">
	<meta http-equiv="description" content="">
	<link rel="stylesheet" href="css/bootstrap.css">
	<style type="text/css">
		body {
			padding-top: 20px;
			padding-bottom: 40px;
		}
		/*自定义容器*/
		.container-narrow {
			margin: 0 auto;
			max-width: 960px;
		}
		/*主体部分表单搜索框*/
		.jumbotron {
			margin: 60px 0;
			text-align: center;		
		}
		#paperId {
			height: 34px;
			line-height: 34px;
			font-size: 22px;
		}
		/*热门推荐等格式*/
		.marketing p + h4 {
			margin-top: 28px;
		}
	</style>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-responsive.css">
	<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
	<!--[if lt IE 9]>
      	<script src="js/html5shiv.js"></script>
    <![endif]-->
  </head>
  
  <body>
    <div class="container-narrow">
    	<div class="masthead">
    		<ul class="nav nav-pills pull-right">
    			<li><a href="#myModal" role="button" class="btn" data-toggle="modal">登录</a></li>
    			<li><a href="">注册</a></li>
    		</ul>
    		<h1>iWen</h1>
    	</div>
    	<!-- 以下内容默认隐藏，脚本弹窗实现登录和用户注册 -->
    	<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h3 id="myModalLabel">用户登录</h3>
			</div>
			<div class="modal-body">
			
				<form class="form-horizontal" action="" method="post">
				  	<div class="control-group">
				    	<label class="control-label" for="inputUserName">账号</label>
					    <div class="controls">
					    	<input type="text" id="inputUserName" placeholder="请输入用户名">
					    </div>
				  	</div>
				  	<div class="control-group">
				    	<label class="control-label" for="inputPassword">密码</label>
					    <div class="controls">
					      	<input type="password" id="inputPassword" placeholder="请输入密码">
					    </div>
				  	</div>
				  	<div class="control-group controls">
				      	<button type="submit" class="btn btn-primary">登录</button>
				  	</div>
				</form>
			</div>
			<div class="modal-footer">
				<button class="btn btn-success" data-dismiss="modal" aria-hidden="true">注册账号</button>
				<button class="btn">关闭</button>
			</div>
		</div>
    	<hr>
    	<div class="jumbotron">
    	<form action="" method="post">
    		<div class="input-append">
    			<input class="span6" id="paperId" type="text" placeholder="请输入问卷编号...">
    			<button class="btn btn-large" type="submit">Go!</button>
    		</div>
    	</form>
    	</div>
    	<hr>
    	<div class="row-fluid marketing">
    		<div class="span6">
    			<h4>热门答卷1</h4>
    			<p>这里可以显示热门回答的几个问题,这里可以显示热门回答的几个问题</p>
    			<h4>热门回答2</h4>
    			<p>这里可以显示热门回答的几个问题,这里可以显示热门回答的几个问题</p>
    			<h4>热门回答3</h4>
    			<p>这里可以显示热门回答的几个问题,这里可以显示热门回答的几个问题</p>
    			<h4>热门回答4</h4>
    			<p>这里可以显示热门回答的几个问题,这里可以显示热门回答的几个问题</p>
    		</div>
    		<div class="span6">
    			<h4>最新发布1</h4>
    			<p>这里可以显示热门回答的几个问题,这里可以显示热门回答的几个问题</p>
    			<h4>热门回答2</h4>
    			<p>这里可以显示热门回答的几个问题,这里可以显示热门回答的几个问题</p>
    			<h4>热门回答3</h4>
    			<p>这里可以显示热门回答的几个问题,这里可以显示热门回答的几个问题</p>
    			<h4>热门回答4</h4>
    			<p>这里可以显示热门回答的几个问题,这里可以显示热门回答的几个问题</p>
    		</div>
    	</div>
    	<hr>
    	<div class="footer">
    		<p>&copy; AtoZ · 2013</p>
    	</div>
    </div>
    <script src="js/jquery.js"></script>
    <script src="js/html5shiv.js"></script>
	<script src="js/bootstrap.min.js"></script>
  </body>
</html>
