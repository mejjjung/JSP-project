package com.jjung.user.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jjung.user.dto.UserDTO;
import com.jjung.user.repository.UserDAO;

@WebServlet("/signInServlet")
public class signInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public signInServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		request.setCharacterEncoding("UTF-8");
//		response.setCharacterEncoding("UTF-8");
//		response.setContentType("text/plain");
		
		UserDAO dao = new UserDAO();
		String userid = request.getParameter("userid");
		String password = request.getParameter("password");
		
		System.out.println(userid);
		System.out.println(password);
		
	  UserDTO responseDto =	dao.select(userid, password);
		if(responseDto != null) {
			HttpSession session = request.getSession();
			session.setAttribute("userid", userid);
			 response.sendRedirect("index.jsp");
		} else {
			//
			response.sendRedirect("login.jsp");
			
		}
		
		// 
		
	}

}
