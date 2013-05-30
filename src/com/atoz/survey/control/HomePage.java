package com.atoz.survey.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.atoz.survey.dao.mysqlimpl.PaperDaoImpl;
import com.atoz.survey.po.Paper;

public class HomePage extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public HomePage() {
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

		HttpSession session = request.getSession();
		String userIdString = (String)session.getAttribute("userId");
		
		if(userIdString != null){
		int userId = Integer.parseInt(userIdString);
		
		PaperDaoImpl paperDaoImpl = new PaperDaoImpl();
		List<Paper> papers = paperDaoImpl.findPaperByUserId(userId);
		
		int pageSize = 10; //each page count
		int pageAllCount = papers.size(); //total counts
		int showPage = 1; //show current page
		
//		session.setAttribute("papers", papers);
//		response.sendRedirect("home.jsp");
		
		request.setAttribute("papers", papers);
		request.setAttribute("pageSize", pageSize);
		request.setAttribute("showPage", showPage);
		request.getRequestDispatcher("home.jsp").forward(request, response);
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

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the POST method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
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
