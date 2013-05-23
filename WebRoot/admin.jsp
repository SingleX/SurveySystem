<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
	<base href="<%=basePath%>admin.jsp">
	<title>iWen-后台管理中心</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="">
	<meta http-equiv="description" content="">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="js/jquery.js"></script>
	<style type="text/css">
		body {
			padding-top: 60px;
			padding-bottom: 40px;
		}
		.sidebar-nav {
			padding: 9px 0;
		}
		#mysidebar {
			position: fixed;
		}
		#mycontent {
			float: right;
		}
		@media (max-width: 980px) {
			.navbar-text.pull-right {
				float: none;
				padding-left: 5px;
				padding-right: 5px;
			}
		}
		.nav-header {
				font-size: 18px;
				padding: 3px 6px;
		}
		.nav-list > li > a {
    		padding: 3px 30px;
		}

	</style>
	<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
	<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
      	<script src="js/html5shiv.js"></script>
    <![endif]-->
    
	<script src="js/bootstrap.min.js"></script>
</head>

<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<button type="button" class="btn btn-navbar" data-toggle="clooapse" data-target=".navbar-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>				
				</button>
				<a class="brand" href="#">iWen > 后台管理</a>
				<div class="nav-collapse collapse">
					<p class="navbar-text pull-right">
						当前登录：admin
					</p>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid">
      	<div class="row-fluid">
        	<div id="mysidebar" class="span3">
          		<div class="well sidebar-nav">
		            <ul class="nav nav-list">
		            	<li class="nav-header">欢迎登录</li>
						<li class="active"><a href="#tab11">系统信息</a></li>
						<li><a href="#tab12">关于</a></li>
						<li class="nav-header">用户管理</li>
						<li><a href="#tab21">查看所有用户</a></li>
						<li><a href="#tab22">查找用户</a></li>
						<li><a href="#tab23">添加用户</a></li>
						<li><a href="#tab24">编辑用户</a></li>
						<li><a href="#tab25">删除用户</a></li>
						<li class="nav-header">问卷管理</li>
						<li><a href="#tab31">查看所有问卷</a></li>
						<li><a href="#tab32">查找问卷</a></li>
						<li><a href="#tab33">编辑问卷</a></li>
						<li><a href="#tab34">删除问卷</a></li>
		            </ul>
          		</div><!--/.well -->
        	</div><!--/span-->
	        <div id="mycontent" class="span9">
	          	<div id="tab11" class="hero-unit">
	            	<p>This is a template for a simple .</p>
	        	</div>
	        	<div id="tab12" class="row-fluid">
		            <div id="tab21">
		              <h2>Heading</h2>
		              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
		              <p><a class="btn" href="#">View details &raquo;</a></p>
		            </div><!--/span-->
		            <div id="tab22">
		              <h2>Heading</h2>
		              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
		              <p><a class="btn" href="#">View details &raquo;</a></p>
		            </div><!--/span-->
		            <div class="span4">
		              <h2>Heading</h2>
		              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
		              <p><a class="btn" href="#">View details &raquo;</a></p>
		            </div><!--/span-->
	          	</div><!--/row-->
	    	</div>
		</div>
    </div>
</body>
</html>
