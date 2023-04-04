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

@WebServlet("/movieSerch")
public class movieList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public movieList() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MovieDAO dao = new MovieDAO();
		ArrayList<MovieDTO> list = dao.select();
		
	
			request.setAttribute("list", list);
			RequestDispatcher dispatcher = request.getRequestDispatcher("movieList.jsp");
			dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
