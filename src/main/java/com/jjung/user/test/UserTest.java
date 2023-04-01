package com.jjung.user.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jjung.user.dto.UserDTO;
import com.jjung.user.repository.UserDAO;

@WebServlet("/userTest")
public class UserTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserTest() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//http://localhost:8080/megaBox/boxTest?id=12&action=delete
		UserDAO dao = new UserDAO();
		
		String action = request.getParameter("button");
		System.out.println(action);
		
		
		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/plain");
		
		String action = request.getParameter("action");
		UserDAO dao = new UserDAO();

		int responseCount = 0;
		
		UserDTO userDto = null;
		if("select".equals(action)) {
			String userid = request.getParameter("userid");
			String password = request.getParameter("password");
			System.out.println(userid);
			System.out.println(password);
			userDto = dao.select(userid, password);
				if(userDto != null) {
					response.setCharacterEncoding("UTF-8");
					response.setContentType("text/html");
					PrintWriter writer = response.getWriter();
					writer.print("<script>alert('로그인 성공 '); location.href='index.jsp'</script>");
					writer.flush();
					response.flushBuffer();
					System.out.println("로그인 완료 되었습니다.");
//					RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
//					dispatcher.forward(request, response);
//					response.sendRedirect("index.jsp");
				} else if(userDto == null) {
					response.setCharacterEncoding("UTF-8");
					response.setContentType("text/html");
					PrintWriter writer = response.getWriter();
					writer.print("<script>alert('로그인에 실패했습니다 '); location.href='login.jsp'</script>");
					writer.flush();
					response.flushBuffer();
					System.out.println("로그인에 실패했습니다.");
					
				} 
		} else if(action.equals("update")) {
			String userid = request.getParameter("userid");
			String password = request.getParameter("password");
			String username = request.getParameter("username");
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");
			responseCount = dao.update(password,username, phone, email, userid);
			RequestDispatcher dispatcher = request.getRequestDispatcher("MyPage.jsp");
			dispatcher.forward(request, response);
		} else if (action.equals("insert")) {
			String userid = request.getParameter("userid");
			String password = request.getParameter("password");
			String username = request.getParameter("username");
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");
			responseCount = dao.insert(userid, password, username, phone, email);
			RequestDispatcher dispatcher = request.getRequestDispatcher("joinOk.jsp");
			dispatcher.forward(request, response);
		} else if("delete".equals(action)) {
			String id = request.getParameter("id");
			dao.delete(Integer.parseInt(id));
			response.sendRedirect("MyPage.jsp");
		} 
		
	}

}
