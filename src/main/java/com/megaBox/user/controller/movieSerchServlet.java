package com.megaBox.user.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.megaBox.user.dto.MovieDTO;
import com.megaBox.user.repository.MovieDAO;

@WebServlet("/SearchServlet")
public class movieSerchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public movieSerchServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MovieDAO dao = new MovieDAO();
		String action = request.getParameter("action");
		String movie = request.getParameter("movie");
		String searchMovieName =request.getParameter("search");
		ArrayList<MovieDTO> list = dao.movie(searchMovieName);
		if("search".equals(action)) {
			request.setAttribute("list", list);
			RequestDispatcher dispatcher = request.getRequestDispatcher("movieSearch.jsp");
			dispatcher.forward(request, response);		
			
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
