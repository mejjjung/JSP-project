package com.megaBox.user.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/connector")
public class Connector extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Connector() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		
		if("index".equals(action)) {
			response.sendRedirect("/megaBox/mainPage.jsp");
		} else if("logout".equals(action)) {
			HttpSession session = request.getSession();
			session.invalidate();
			response.sendRedirect("/megaBox/mainPage.jsp");
		} else if("join".equals(action)) {
			response.sendRedirect("/megaBox/join.jsp");
		} else if("login".equals(action)) {
			response.sendRedirect("/megaBox/login.jsp");
		} else if("search".equals(action)) {
			response.sendRedirect("/megaBox/movieSearch.jsp");
		} else if("myPage".equals(action)) {
			response.sendRedirect("/megaBox/myPage.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
