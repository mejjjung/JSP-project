package com.jjung.user.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jjung.user.dto.MovieDTO;
import com.jjung.user.repository.MovieDAO;

@WebServlet("/SearchServlet")
public class movieSerchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public movieSerchServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MovieDAO dao = new MovieDAO();
		String action = request.getParameter("action");
//		System.out.println(action);
		String movie = request.getParameter("movieName");
		String searchMovieName =request.getParameter("search");
//		System.out.println(searchMovieName);
		ArrayList<MovieDTO> list = dao.movie(searchMovieName);
//		System.out.println(list);
		if("search".equals(action)) {
			request.setAttribute("list", list);
			RequestDispatcher dispatcher = request.getRequestDispatcher("movieSearch.jsp");
			dispatcher.forward(request, response);		
			
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
