package com.atoz.survey.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.atoz.survey.dao.QuestionDao;
import com.atoz.survey.dao.mysqlimpl.QuestionDaoImpl;
import com.atoz.survey.po.Question;

public class SubmitSucess extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public SubmitSucess() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	@Override
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
			QuestionDao questionDao = new QuestionDaoImpl();
			
			HttpSession session = request.getSession();
			Integer paperIdString =(Integer) session.getAttribute("paperId");
			int paperId = paperIdString.intValue();
			
			String totalNumString = request.getParameter("totalNum");
			int totalNum = Integer.parseInt(totalNumString);
			
			String answers[] = new String[totalNum];
			
			for (int i = 0; i < answers.length; i++) {
				String ss =  "q" + (i + 1);
				// 在这里要处理到底是问答题还是选择题。
				String answerString = request.getParameter(ss);
				
				
				answers[i] = answerString;  //得到答案的字符串
			}
			
//			List<String> strings = questionDao.findQstAnswerByPaperId(paperId);
			List<Question> questions = questionDao.findQuestionsByPaperId(paperId);
			int j = 0; //记录题号
			for (Question question : questions) {
				if(question.getQstType() == 1){
					String string = question.getQstAnswer();
					String regex = "&";
					String[] answerNumString = string.split(regex);
					int[] answerNum = new int[answerNumString.length];
					for (int i = 0; i < answerNumString.length; i++) {
						answerNum[i] = Integer.parseInt(answerNumString[i]);
						
					}
					int k = Integer.parseInt(answers[j]);
					switch (k) {
					case 1:
						    answerNum[0] += 1;
						break;
					case 2:
						 answerNum[1] += 1;
						 break;
					case 3:
						 answerNum[2] += 1;
						 break;
					case 4:
						 answerNum[3] += 1;
						 break;
						 
					default:
						break;
					}
					//将修改后的答案写入数据库
					String newAnswer = answerNum[0] + "&" +answerNum[1] + "&" +answerNum[2] + "&" +answerNum[3];
					
					questionDao.updateQuestions(question.getQstId(), newAnswer);
					
				}
				else  if(question.getQstType() == 2){
					questionDao.updateQuestions(question.getQstId(), answers[j]);
				}
				j++;
			}
				
				response.sendRedirect("success2.jsp");
			
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	@Override
	public void init() throws ServletException {
		// Put your code here
	}

}
