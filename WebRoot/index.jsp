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
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
	<!--[if lt IE 9]>
      	<script src="js/html5shiv.js"></script>
    <![endif]-->
    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<style type="text/css">
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
	
</head>
<body>
    <div class="container-narrow">
    	<div class="masthead">
    		<ul class="nav nav-pills pull-right">
    			<li><a href="login.jsp" role="button" class="btn">登录</a></li>
    			<li>&nbsp;</li>
    			<li><a href="reg.jsp" role="button" class="btn">注册</a></li>
    		</ul>
    		<h1><a href="index.jsp">iWen</a></h1>
    	</div>
    	<hr>
    	<div class="jumbotron">
			<form action="surveyPage" method="post">
				<div class="input-append">
					<input class="span6" id="paperId" type="text" placeholder="请输入问卷编号..." name="paperId">
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
</body>
</html>
