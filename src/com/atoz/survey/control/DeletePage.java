package com.atoz.survey.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.atoz.survey.dao.PaperDao;
import com.atoz.survey.dao.QuestionDao;
import com.atoz.survey.dao.mysqlimpl.PaperDaoImpl;
import com.atoz.survey.dao.mysqlimpl.QuestionDaoImpl;
import com.atoz.survey.po.Paper;

public class DeletePage extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public DeletePage() {
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

		String paperIdString = request.getParameter("paperId");
		HttpSession session = request.getSession();
		String userIdString = (String)session.getAttribute("userId");
		
		if(paperIdString != null && userIdString != null){
			int paperId = Integer.parseInt(paperIdString);
			int userId = Integer.parseInt(userIdString);
			
			PaperDao paperDao = new PaperDaoImpl();
			 int paperNum = paperDao.deletePaperByPaperId(paperId);
			
			QuestionDao questionDao = new QuestionDaoImpl(); 
			int questionNum = questionDao.deleteQusetionByPaperId(paperId);
			PaperDaoImpl paperDaoImpl = new PaperDaoImpl();
			List<Paper> papers = paperDaoImpl.findPaperByUserId(userId);
			
			session.setAttribute("papers", papers);
			response.sendRedirect("home.jsp");
			
		}
		else{
			response.sendRedirect("index.jsp");
		}
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

		doGet(request,response);
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
