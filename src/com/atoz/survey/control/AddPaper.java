package com.atoz.survey.control;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.atoz.survey.dao.PaperDao;
import com.atoz.survey.dao.mysqlimpl.PaperDaoImpl;
import com.atoz.survey.po.Paper;
import com.atoz.survey.po.User;
import com.sun.org.apache.bcel.internal.generic.NEW;

public class AddPaper extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AddPaper() {
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

		PaperDao paperDao = new PaperDaoImpl();
		
		Paper paper = new Paper();
		
		HttpSession session = request.getSession();
		
		User user = (User) session.getAttribute("userInfo");
		int userId = user.getUserId();

		paper.setUserId(userId);
		
		String paperTitle0 = request.getParameter("paperTitle");
		String paperTitle = new String(paperTitle0.getBytes("ISO-8859-1"),"utf-8");
		paper.setPaperTitle(paperTitle);
		
		String paperTypeString = request.getParameter("paperType");
		int paperType = Integer.parseInt(paperTypeString);
		paper.setPaperType(paperType);
		
		String paperSummary0 = request.getParameter("paperSummary");
		String paperSummary = new String(paperSummary0.getBytes("ISO-8859-1"),"utf-8");
		paper.setPaperSummary(paperSummary);
		
		String paperBg = request.getParameter("paperBg");
		paper.setPaperBg(paperBg);
		
		//发布日期
		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String paperStartDate = simpleDateFormat.format(date);
		paper.setPaperStartDate(paperStartDate);
		
		//截止日期的设置
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(new Date());
		calendar.add(Calendar.DATE,+30);
		date = calendar.getTime();
		String dataString = simpleDateFormat.format(date);
		paper.setPaperEndDate(dataString);
		
		int paperStatus = 0;//未发布
		paper.setPaperStatus(paperStatus);
		
		//回答次数 
		int paperCount = 0;
		paper.setPaperCount(paperCount);
		
	
		paperDao.addPapers(paper);
		
		int paperId = paperDao.findPaperIdByuserIdAndDate(userId, paperStartDate);
		
		session.setAttribute("paperId", new Integer(paperId));
		response.sendRedirect("addquestion1.jsp");
		
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
