package com.jjung.cgv.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jjung.cgv.dto.CgvDTO;
import com.jjung.cgv.repository.CgvDAO;

@WebServlet("/CgvTest")
public class CgvTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CgvTest() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CgvDAO dao = new CgvDAO();
		
		String action = request.getParameter("action");
		
//		ArrayList<CgvDTO> resultList = dao.select();
//		request.setAttribute("list", resultList);
		RequestDispatcher dispatcher = request.getRequestDispatcher("joinOk.jsp");
		dispatcher.forward(request, response);
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
//		out.println(resultList.toString());
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/plain");
		String action = request.getParameter("action");
		
				
		int responseCount = 0;
		if(action.equals("insert")) {
			CgvDAO dao = new CgvDAO();
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
		
		if(action.equals("select")) {
			CgvDAO dao = new CgvDAO();
			String userid = request.getParameter("userid");
			String password = request.getParameter("password");
			dao.select(userid, password);
			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
 