package com.megaBox.user.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.megaBox.user.dto.UserDTO;
import com.megaBox.user.repository.UserDAO;

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
		
		UserDAO dao = new UserDAO();
		String userid = request.getParameter("userid");
		String password = request.getParameter("password");
		
		
	  UserDTO responseDto =	dao.select(userid, password);
		if(responseDto != null) {
			HttpSession session = request.getSession();
			session.setAttribute("userid", userid);
			session.setAttribute("username", responseDto.getUsername());
			 response.sendRedirect("mainPage.jsp");
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('로그인 실패');location.href='login.jsp'</script>"); 
		}
	}

}
