<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <base href="<%=basePath%>">
    
    <title>iWen-用户注册</title>
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
			max-width: 470px;
			margin: 0 auto;	
		}
		.jumbotron form {
			padding: 10px;
			border: 1px solid #e5e5e5;
			border-radius: 5px;
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
    <script src="js/jquery.js"></script>
    <script type="text/javascript">
	$(document).ready(function(){
  		$("#tip").click(function(){
    		$(this).parent().hide();
  		});
  		$("#tip2").click(function(){
    		$(this).parent().hide();
  		});
	});
	
	function check() {
		var name = document.getElementById("inputUserName");
		var pass = document.getElementById("inputPassword");
		var pass2 = document.getElementById("inputPassword2");
		if (name.value == "") {
			$(".alert").show();
			name.focus();
			return false;
		} else if (pass.value == "") {
			$(".alert").show();
			pass.focus();
			return false;
		} else if (pass2.value == "") {
			$(".alert").show();
			pass2.focus();
			return false;
		} else if(pass.value != pass2.value) {
			$(".alert-password").show();
			pass.focus();
			return false;
		}
	}
</script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container-narrow">
    	<div class="masthead">
    		<ul class="nav nav-pills pull-right">
    			<li><a class="btn" href="login.jsp" role="button">用户登录</a></li>
    		</ul>
    		<h1><a href="index.jsp">iWen</a></h1>
    	</div>
    	<hr>
    	<div class="jumbotron">
			<!-- form start -->
			<form class="form-horizontal" action="regServlet" method="post" onSubmit="return check()">
				<h2>账号注册</h2>
				<%
				String rtnMsg = (String) session.getAttribute("rtnMsg");
				if("ERROR".equals(rtnMsg)){
				%>
				<div class="alert alert-warning fade in">
					<button class="close" data-dismiss="alert" type="button">x</button>
					<center>登录失败，用户名或密码错误！</center>
				</div>
				<%
					session.invalidate();
				}
				%>
				<div id="alert" class="alert alert-warning fade in" style="display:none;">
					<a id="tip" class="close">x</a>
					<center>注册信息不完整，请重新输入！</center>
				</div>
				<div id="alert-password" class="alert alert-warning fade in" style="display:none;">
					<a id="tip2" class="close">x</a>
					<center>两次密码不一致，请重新输入！</center>
				</div>
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
			    	<label class="control-label" for="inputPassword">重复密码</label>
				    <div class="controls">
				      	<input type="password" id="inputPassword2" name="inputPassword2" placeholder="password">
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
			      	<button type="submit" class="btn btn-success">注册</button>
			      	<button type="reset" class="btn">重置</button>
			  	</div>
			</form><!-- form end -->
    	</div>
    	<br><br><br><br>
    	<hr>
    	<div class="footer">
    		<p>&copy; AtoZ · 2013</p>
    	</div>
    </div>
</body>
</html>
