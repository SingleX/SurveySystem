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
			margin: 50px 0;
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
	<script src="js/bootstrap.js"></script>
	<script src="js/bootstrap.min.js"></script>
  </head>
  
  <body>
    <div class="container-narrow">
    	<div class="masthead">
    		<ul class="nav nav-pills pull-right">
    			<li><a href="">登录</a></li>
    			<li><a href="">注册</a></li>
    		</ul>
    		<h1>iWen</h1>
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
    		</div>
    		<div class="span6">
    			<h4>最新发布1</h4>
    			<p>这里可以显示热门回答的几个问题,这里可以显示热门回答的几个问题</p>
    			<h4>热门回答2</h4>
    			<p>这里可以显示热门回答的几个问题,这里可以显示热门回答的几个问题</p>
    			<h4>热门回答3</h4>
    			<p>这里可以显示热门回答的几个问题,这里可以显示热门回答的几个问题</p>
    		</div>
    	</div>
    	<hr>
    	<div class="footer">
    		<p>&copy;AtoZ 2013</p>
    	</div>
    
    </div>
  </body>
</html>
