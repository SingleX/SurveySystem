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
		#iframe {
			width:960px;
			height:530px;
			border: 2px #E3E3E3 solid;
			border-radius: 5px;
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
    <script type="text/javascript">
		$(document).ready(function () {
			var aLi = document.getElementById("tag").getElementsByTagName("li");
			for (var i = 0; i < aLi.length; i++) {
				aLi[i].onClick = function () {
					for (var j = 0; j < aLi.length; j++) {
							aLi[j].removeClass("active");
					}
					aLi[i].addClass("active");
				};
			}
		});
</script>
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
          		<div id="tag" class="well sidebar-nav">
		            <ul class="nav nav-list">
		            	<li class="nav-header">功能面板</li>
						<br>
						<li class="nav-header">用户管理</li>
						<li><a href="adminServlet?action=findAllUsers" target="iframe">查看所有用户</a></li>
						<li><a href="adminServlet?action=findUser" target="iframe">用户综合管理</a></li>
						<li><a href="adminServlet?action=addUser" target="iframe">添加用户账号</a></li>
						<li class="nav-header">问卷管理</li>
						<li><a href="#" target="iframe">查看所有问卷</a></li>
						<li><a href="#" target="iframe">问卷综合管理</a></li>
		            </ul>
          		</div><!--/.well -->
        	</div><!--/span-->
	        <div id="mycontent" class="span9">
	          	<iframe class="span9" id="iframe" src="iframe.jsp" name="iframe"></iframe>
	    	</div>
		</div>
    </div>
</body>
</html>
