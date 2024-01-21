package com.tera.movie.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tera.common.util.PageInfo;
import com.tera.movie.model.service.MovieCommentService;
import com.tera.movie.model.vo.MovieComment;

@WebServlet(name = "movieComment", urlPatterns = { "/movie/comment" })
public class MovieCommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MovieCommentServlet() {
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	PageInfo pageInfo = null;
    	int page = 0;
    	int listCount = 0;
    	List<MovieComment> list = null;
    	
    	// 임의 값 입력
//    	list = new ArrayList<>();
//    	MovieComment movieComment = new MovieComment();
//		
//		movieComment.setTicketNo(2);
//		movieComment.setScore(9);
//		movieComment.setComment("너무재미있습니다 테스트입니다.");
//		movieComment.setCreateDate(null);
//		movieComment.setPoint("관람,연출");
//		movieComment.setMovieNo(2);
//		
//		list.add(movieComment);
    	// 여기까지
		
    	try {
    		page = Integer.parseInt(request.getParameter("page"));
			
		} catch (NumberFormatException e) {
			page = 1;
		}

//    	System.out.println(page);
    	
    	listCount = new MovieCommentService().getMovieCommentCount();
    	pageInfo = new PageInfo(page, 5, listCount, 5);
    	list = new MovieCommentService().getMovieCommentList(pageInfo);
    	
    	request.setAttribute("pageInfo", pageInfo);
    	request.setAttribute("list", list);
//    	request.setAttribute("movieComment", movieComment);
    	
    	System.out.println(list);
    	System.out.println(pageInfo);
    	
    	request.getRequestDispatcher("/views/movie/movieComment.jsp").forward(request, response);
    	
    }

}