<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showresult.jsp' starting page</title>
    
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
  body{

  	background-repeat:repeat-x;
  	background-attachment:fixed;
  }
  .container{
  margin-top:15px;
  
  }
  
  .radio.inline.q2 + .radio.inline.q2{
  margin-right:30px;
  }

  .survey{
  	border:1px;
  	background-color:white;
  	height:auto;
  	margin:0px;
  	padding:15px 0px 0px 30px;
  	
  }
  .div_question{
  	width:96%;
  	height:auto;
  	border:2px solid white;
  	padding :4px 4px;
  	margin:2px auto;
  	border-bottom:1px solid #EFEEEE;
  }
  .plength{
  	width:60%;
  	text-align:center;
  }
  .mastfoot{
  text-align:center;
  margin:10px 0px 5px;
  }
  
  </style>

  </head>
  
<body  style='background:url(img/06.jpg);'>
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
  	<div class="survey">
  	<form action="" method="post">
  	
  	<input type="hidden" name="totalNum" value="10">
  	<% for(int i = 0;i < 10; i++){
  	String ss = "";
  	ss += "checkradios" + (i + 1);
  	%>
  	
  	<div class="div_question">
  	<label><h5>1、为什么生命总是不受到重视？</h5></label>
  	<label class="radio">
  	<input type="radio" name=<%=ss %> id=<%=ss %> value="1">
  	A、那是因为人贱
  	</label>
  	<label class="radio">
  	<input type="radio" name="checkradios" id=<%=ss %> value="2">
  	B、精神有问题
  	</label>
  	<label class="radio">
  	<input type="radio" name="checkradios" id=<%=ss %> value="3">
  	C、社会本来就是不公平的，要想有回报，必须先要付出
  	</label>
  	<label class="radio">
  	<input type="radio" name="checkradios" id=<%=ss %> value="4">
  	D、社会的冷漠造成！
  	</label>
  	<div class="plength">
  	<div class="progress">
		  <div class="bar bar-success" style="width: 35%;">A:35%</div>
		  <div class="bar bar-warning" style="width: 20%;">B:20%</div>
		  <div class="bar bar-danger" style="width: 10%;">C:10%</div>
		  <div class="bar bar-success" style="width: 35%">D:35%</div>
	</div>
</div>
  	</div>
  	
  	<%} %>
  	
  	
  	</form>
  	</div>
  	
  	<div class="mastfoot">
  	  <label>wo de ai wei wo suo you</label>
  	
  	</div>
  	</div>  </body>
</html>
