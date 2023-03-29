package com.jjung.cgv.test;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jjung.cgv.repository.CgvDAO;

@WebServlet("/CgvTest")
public class CgvTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CgvTest() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String action = request.getParameter("action");
		
		String userid = request.getParameter("userid");
		String password = request.getParameter("password");
		
		CgvDAO dao = new CgvDAO();
		int result = dao.select(userid, password);
		
		String login = "";
		
		if(result == 0) {
			System.out.println("로그인 완료 되었습니다.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
		} else if(result == 1) {
			System.out.println("암호를 확인해주세요");
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
			
		} else {
			System.out.println("존재하지 않는 아이디 입니다.");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/plain");
		String action = request.getParameter("action");
		CgvDAO dao = new CgvDAO();

		int responseCount = 0;
		if (action.equals("insert")) {
			String userid = request.getParameter("userid");
			String password = request.getParameter("password");
			String username = request.getParameter("username");
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");
			responseCount = dao.insert(userid, password, username, phone, email);
			RequestDispatcher dispatcher = request.getRequestDispatcher("joinOk.jsp");
			dispatcher.forward(request, response);
		}
//		PrintWriter out = response.getWriter();
//		out.print("회원가입 완료 갯수 : " + responseCount);
//		System.out.println(responseCount);

	}

}
