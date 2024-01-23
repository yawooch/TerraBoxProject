package com.tera.movie.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 영화 세부페이지로 이동하는 서블릿
@WebServlet(name = "movieDetail", urlPatterns = { "/movie/detail" })
public class MovieDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MovieDetailServlet() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 영화 객체에서 영화의 no를 파라미터로 받아서 사용함
//		int no = Integer.parseInt(request.getParameter("no"));
//		System.out.println("영화 번호: " + no);
		
        request.getRequestDispatcher("/views/movie/movieDetail.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
