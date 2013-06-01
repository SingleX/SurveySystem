package com.atoz.survey.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.atoz.survey.dao.QuestionDao;
import com.atoz.survey.dao.mysqlimpl.QuestionDaoImpl;
import com.atoz.survey.po.Question;

public class AddQuestions extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AddQuestions() {
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

		doPost(request, response);
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

			//&#%&  题与题的分割号   $#$问题间的分割号
		//不用字符串相连，改用list存储，然后写入数据库
		Question question = new Question();
		QuestionDao questionDao = new QuestionDaoImpl();
		
		HttpSession session = request.getSession();
		Integer paperIdString = (Integer)session.getAttribute("paperId");
		int paperId = paperIdString.intValue();
		question.setPaperId(paperId);
		
//		@SuppressWarnings("unchecked")
//		List<String> qstContent = (List<String>) session.getAttribute("qstContent");
		
		String qstTitle0 = request.getParameter("qstTitle");
		String qstTitle = new String(qstTitle0.getBytes("ISO-8859-1"),"utf-8");
		question.setQstTitle(qstTitle);
		
		String qstTypeString = request.getParameter("qstType"); // 问题类型
		int qstType = Integer.parseInt(qstTypeString);
		question.setQstType(qstType);
		
		if(qstType == 1){
			String qstNum10 = request.getParameter("qstOption1");
			String qstNum1 = new String(qstNum10.getBytes("ISO-8859-1"),"utf-8");
			
			String qstNum20 = request.getParameter("qstOption2");
			String qstNum2 = new String(qstNum20.getBytes("ISO-8859-1"),"utf-8");
			     
			String qstNum30 = request.getParameter("qstOption3");
			String qstNum3 = new String(qstNum30.getBytes("ISO-8859-1"),"utf-8");
			    
			String qstNum40 = request.getParameter("qstOption4");
			String qstNum4 = new String(qstNum40.getBytes("ISO-8859-1"),"utf-8");
			
			String content =qstNum1 +"#"+qstNum2 +"#"+qstNum3+"#"+qstNum4;
			question.setQstOption(content);
//			qstContent.add(content);
//			session.setAttribute("qstContent", qstContent);
		}
		else{
			question.setQstOption("");
		}
		question.setQstAnswer("0&0&0&0"); //初始化问题答案
		
		questionDao.addQuestions(question);
		
		response.sendRedirect("success.jsp");
		
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
