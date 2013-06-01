<%@page import="com.atoz.survey.po.Login"%>
<%@page import="com.atoz.survey.po.Question"%>
<%@page import="com.atoz.survey.dao.mysqlimpl.QuestionDaoImpl"%>
<%@page import="com.atoz.survey.dao.QuestionDao"%>
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

<title>My JSP 'showresult.jsp' starting page</title>

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

.plength {
	width: 60%;
	text-align: center;
}

.mastfoot {
	text-align: center;
	margin: 10px 0px 5px;
}
</style>

</head>

<body style='background:url(img/06.jpg);'>
<%
	Login login = (Login) session.getAttribute("loginInfo");
 %>
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
			<form action="" method="post">
				<%
					QuestionDao questionDao = new QuestionDaoImpl();
					//Integer paperIdiInteger = (Integer) session.getAttribute("paperId");
					//int paperId = paperIdiInteger.intValue();
					String paperIdString = request.getParameter("paperId");
					int paperId = Integer.parseInt(paperIdString);

					List<Question> questions = questionDao.showResultByPaperId(paperId);
					int totalNum = questions.size();
					int i = 1;
					String ss = "";
				%>
				<input type="hidden" name="totalNum" value=totalNum>
				<div class="div_question">
					<%
						for (Question question : questions) {
							ss = "q" + i;
					%>


					<label><h5><%=i%>、<%=question.getQstTitle()%></h5> </label>
					<%
						String content = question.getQstOption();
							if (content != null && (question.getQstType() == 1)) {
								String[] options = content.split("#");
								int j = 0;//跟踪选择的值变化
								for (String option : options) {
					%>
					<label class="radio"> <input type="radio" name=<%=ss%>
						id=<%=ss%> value=<%=j%>> <%=option%> </label>


					<%
						j++;
								}
								String answesrString = question.getQstAnswer();
								String answer[] = answesrString.split("&");
								int answerInt[] = new int[answer.length];
								int totalCount = 0;
								for (int k = 0; k < answer.length; k++) {
									answerInt[k] = Integer.parseInt(answer[k]);
									totalCount += answerInt[k];
								}
								
								if (totalCount != 0) {
					%>
					
					<div class="plength">
						<div class="progress">
							<div class="bar bar-success"
								style="width: <%=(answerInt[0]*100 / totalCount)%>%;">
								A:<%=(answerInt[0]*100 / totalCount )%>%
							</div>
							<div class="bar bar-warning"
								style="width: <%=(answerInt[1]*100 / totalCount )%>%;">
								B:<%=(answerInt[1]*100 / totalCount )%>%
							</div>
							<div class="bar bar-danger"
								style="width: <%=(answerInt[2]*100 / totalCount )%>%;">
								C:<%=(answerInt[2]*100 / totalCount )%>%
							</div>
							<div class="bar bar-success"
								style="width: <%=(100-(answerInt[0]*100 / totalCount )-(answerInt[1]*100 / totalCount )-(answerInt[2]*100 / totalCount )) %>%">
								D:<%=(100-(answerInt[0]*100 / totalCount )-(answerInt[1]*100 / totalCount )-(answerInt[2]*100 / totalCount )) %>%
							</div>
						</div>
					</div>

					<%
						} else {
					%>
					<div class="plength">
						<div class="progress"></div>
					</div>
					<%
						}
							} else {
					%>
					<textarea rows="4" cols="50" name=<%=ss%>><%=question.getQstAnswer()%></textarea>
					<%
						}
							i++;
						}
					%>

				</div>



			</form>
		</div>

		<div class="mastfoot">
			<label>wo de ai wei wo suo you</label>

		</div>
	</div>
</body>
</html>
