<%@page import="com.atoz.survey.dao.mysqlimpl.QuestionDaoImpl"%>
<%@page import="com.atoz.survey.dao.QuestionDao"%>
<%@page import="com.atoz.survey.po.Question"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'scanservey.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/bookstrap-responsive.min.css" rel="stylesheet"
	type="text/css">
<!--[if lt IE 9]>
      	<script src="js/html5shiv.js"></script>
    <![endif]-->
<script src="js/jquery-1.9.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/html5shiv.js"></script>
<style type="text/css">
body {
	background-repeat: repeat-x;
	background-attachment: fixed;
}

.container {
	margin-top: 15px;
}

.masthead {
	background-color: none;
}

.radio.inline.q2+.radio.inline.q2 {
	margin-right: 30px;
}

.survey {
	border: 1px;
	background-color: white;
	height: auto;
	margin: 0px;
	padding: 15px 0px 0px 30px;
}

.div_question {
	width: 96%;
	height: auto;
	border: 2px solid white;
	padding: 4px 4px;
	margin: 2px auto;
	border-bottom: 1px solid #EFEEEE;
}


.mastfoot {
	text-align: center;
	margin: 10px 0px 5px;
}
</style>

</head>

<body style='background:url(img/06.jpg);'>
	<div class="container">
		<div class="masthead">
			<ul class="nav nav-pills pull-right">
				<li><a href="#myMadel" role="button" class="btn"
					data-toggle="modal"> 登陆</a>
				</li>
				<li><a href="#" class="btn" data-toggle="modal"> 注册</a>
				</li>
			</ul>
			<h1>iwen</h1>
		</div>
		<hr>
		<hr>
		<div class="survey">
			<form action="pubPaper" method="post">
				<%
					QuestionDao questionDao = new QuestionDaoImpl();

					String ss = "";
					Integer paperIdInt = (Integer) session.getAttribute("paperId");
					int paperId = paperIdInt.intValue();
					List<Question> questions = questionDao
							.findQuestionsByPaperId(paperId);
					int totalNum = questions.size();
					int i = 1;
				%>
				<input type="hidden" name="totalNum" value=<%=questions.size()%>>
				<div class="div_question">
				<%
					for (Question question : questions) {
						ss = "q" + i;
				%>

				
					<label><h5>题目：<%=question.getQstTitle()%></h5>
					</label>
					<%
							String content = question.getQstOption();
							if (content != null && (question.getQstType() == 1)) {
								String[] options = content.split("#");
								for (String option : options) {
					%>
					<label class="radio"> <input type="radio" name=<%=ss%>
						id=<%=ss%> value=<%=i %>> <%=option%> </label>

					<%
						}
							} else {
					%>
					<textarea rows="4" cols="50" name=<%=ss%>></textarea>
					<%
						}
							i++;
						}
					%>
					<br>
					<input class="btn btn-danger" type="submit" value="发布"> 
					<a href="addquestion1.jsp" class="btn btn-success">继续添加</a>
						</div>
			</form>
		</div>


		<div class="mastfoot">
			<label>wo de ai wei wo suo you</label>

		</div>
	</div>
</body>
</html>