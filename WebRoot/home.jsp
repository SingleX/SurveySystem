<%@page import="com.atoz.survey.po.Login"%>
<%@page import="com.atoz.survey.po.Paper"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>iWen-个人中心</title>
    
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
		width:960px;
		margin:auto;
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
			margin-top:15px;
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
	</style>
	
	<!--[if lt IE 9]>
      	<script src="js/html5shiv.js"></script>
    <![endif]-->
    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>

  </head>
  
  <body>
  <%
  		int showPage = 1;
  		String showPageInt = request.getParameter("showPage");
  		if(showPageInt != null){
  			showPage = Integer.parseInt(showPageInt);
  		}
  		List<Paper> papers = (List<Paper>) session.getAttribute("papers");
  		Login login = (Login) session.getAttribute("loginInfo");
  		int showcurrentPage = 0;
  		int remainCount = 0;
  		int endLineCount = 0;
  		int pageSize = 10;
  		if(papers != null || login != null){
			int pageAllCount = 0; //total counts
			if(showPage == 0){showPage = 1;}
			pageAllCount = papers.size();
			
			showcurrentPage = (showPage - 1) * pageSize;  //起始处下标
			remainCount = pageAllCount - showcurrentPage; //剩余的条数
			if(remainCount > 10){
				 endLineCount = showcurrentPage + 10; //截止下标
			}
			else{
				endLineCount = pageAllCount;
			}
  		
  		
		
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
    		<div class="row-fluid">
    			<div class="span10">
    		<table class="table table-striped table-hover">
    			<thead>
    				<tr>
    					<th>问卷标题</th>
    					<th>发布日期</th>
    					<th>回答次数</th>
    					<th>查看结果</th>
    				</tr>
    			</thead>
    			<tbody>
    			<%
    				for(int i = showcurrentPage; i < endLineCount; i++){
    				Paper paper = papers.get(i);
    			 %>
    			<tr>
    				<td><a href="surveyPage?paperId=<%=paper.getPaperId() %>" ><%=paper.getPaperTitle() %></a></td>
    				<td><%=paper.getPaperStartDate() %></td>
    				<td><%=paper.getPaperCount() %></td>
    				<td><a href="showresult.jsp?paperId=<%=paper.getPaperId() %>" class="btn btn-small">查看结果</a></td>
    				<td><a href="deletePage?paperId=<%=paper.getPaperId() %>" class="btn btn-small btn-danger">删除</a></td>
    				</tr>
    				<%
    				} %>
    			</tbody>
    		</table>
    			</div>
    			<div class="span2">
	    			<div class="right-button">
	    				<div class="row">
	    					<div class="span2"></div>
	    					<div class="span8 fabu"><a href="addpaper.jsp" class="btn btn-success">发布问卷</a></div>
	    					<div class="span2"></div>
	    				</div>
	    				
	    			</div>
    			</div>
    		</div>
    		<div class="row">
    			<div class="span10">
    				<ul class="pager">
    				<%
    					if(showPage != 1){
    				%>
    						<li><a href="home.jsp?showPage=<%=(showPage-1) %>">前一页</a></li>
    				<%
    					}else{
    				%>
    					<li class="disabled"><a href="home.jsp?showPage=<%=(showPage-1) %>">前一页</a></li>
    				<%
    					}
    				 %>
					  <li><a href="home.jsp?showPage=<%=(showPage+1) %>">后一页</a></li>
					</ul>
		    	</div>
    		</div>
    	</div>
   </div>
   <%		
   			}
   			
    %>
  </body>
</html>
