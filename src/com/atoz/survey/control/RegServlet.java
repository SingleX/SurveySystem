package com.atoz.survey.control;

import java.io.IOException;
import java.util.*;
import java.text.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.atoz.survey.po.Login;
import com.atoz.survey.po.User;
import com.atoz.survey.service.LoginService;
import com.atoz.survey.service.UserService;
import com.atoz.survey.service.impl.LoginServiceImpl;
import com.atoz.survey.service.impl.UserServiceImpl;

public class RegServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public RegServlet() {
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
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String from = request.getParameter("from");
		String userName = request.getParameter("inputUserName");
		String userPassword = request.getParameter("inputPassword");
		String userSexString = request.getParameter("inputSex");
		int userSex = Integer.parseInt(userSexString);
		String userEmail = request.getParameter("inputEmail");

		Date now = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance();
		String datetime = dateFormat.format(now);

		UserService userService = new UserServiceImpl();
		if (userService.findUserByUserName(userName) == null) {
			User user = new User();
			user.setUserName(userName);
			user.setUserPassword(userPassword);
			user.setUserIcon("default_icon.png");
			user.setUserMail(userEmail);
			user.setUserReg(datetime);
			user.setUserSex(userSex);
			user.setUserRole(1);
			userService.addUsers(user);
		}
		if (from != null && from.equals("fromAdmin")) {
			HttpSession session = request.getSession();
			session.setAttribute("tips", "SUCCESS");
			response.sendRedirect("iframe.jsp");
		} else {
			Login login = null;
			LoginService loginService = new LoginServiceImpl();
			// 登录成功，带着登录信息跳转到个人中心：home.jsp
			login = loginService.loginInfo(userName, userPassword);
			HttpSession session = request.getSession();
			session.setAttribute("loginInfo", login);
			response.sendRedirect("home.jsp");
		}
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		this.doGet(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	@Override
	public void init() throws ServletException {
		// Put your code here
	}

}
