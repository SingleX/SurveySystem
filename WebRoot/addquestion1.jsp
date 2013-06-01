<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE>
<html lang="en">
  <head>
    <base href="<%=basePath%>">
    
    <title>添加问卷问题</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-responsive.css">
	<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
	<!--[if lt IE 9]>
      	<script src="js/html5shiv.js"></script>
    <![endif]-->
    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
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
		.controls input{
		 	height:30px;
		 	line-height:30px;
		}
	</style>
	
  </head>
  
  <body>
    <div class="container1">
    	<div class="masthead">
    		<ul class="nav nav-pills pull-right">
    			<li><a href="login.jsp" role="button" class="btn">登录</a></li>
    			<li>&nbsp;</li>
    			<li><a href="reg.jsp" role="button" class="btn">注册</a></li>
    		</ul>
    		<h1><a href="index.jsp">iWen</a></h1>
    	</div>
    	<hr>
    	<div class="maincontent">
    		<ul class="nav nav-pills">
    			<li class="active">
    				<a href="addquestion1.jsp">单选题</a>
    			</li>
    			<li> <a href="addquestion2.jsp">问答题</a></li>
    		</ul>
    		
    	
    		<form action="addQuestions" method="post" class="form-horizontal">
    			
    			<input type="hidden" value="1" name="qstType">
				    <label>添加问题</label>
				    <div class="control-group">
					    <label class="control-label" for="inputTitle">问题题目</label>
					    <div class="controls">
					    <textarea rows="3" cols="50" name="qstTitle" placeholder="输入问题题目 " ></textarea>
					    </div>
				    </div>
				    <div class="control-group">
					    <label class="control-label" for="inputOption">A、</label>
					    <div class="controls">
					      <input type="text" id="inputOption" placeholder="输入选项内容" name="qstOption1" >
					    </div>
				    </div>
				    <div class="control-group">
					    <label class="control-label" for="inputOption">B、</label>
					    <div class="controls">
					      <input type="text" id="inputOption" placeholder="输入选项内容" name="qstOption2">
					    </div>
				    </div>
				    <div class="control-group">
					    <label class="control-label" for="inputOption">C、</label>
					    <div class="controls">
					      <input type="text" id="inputOption" placeholder="输入选项内容" name="qstOption3">
					    </div>
				    </div>
				    <div class="control-group">
					    <label class="control-label" for="inputOption">D、</label>
					    <div class="controls">
					      <input type="text" id="inputOption" placeholder="输入选项内容" name="qstOption4">
					    </div>
				    </div>
				    <input type="submit" name="sumbit" class="btn btn-success" value="继续添加">
    		</form>
    		
    	</div>
    </div>
    
  </body>
</html>
