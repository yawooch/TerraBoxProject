package com.tera.ticket.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.tera.movie.model.service.MovieService;
import com.tera.movie.model.vo.Movie;

/**
 * 영화목록을 가져오는 Ajax Servlet
 */
@WebServlet(name = "ticketMovieLIstAjax", urlPatterns = { "/ticket/movielist.ajax" })
public class TicketMovieLIstAjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TicketMovieLIstAjaxServlet() {}

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        List<Movie> movies = new MovieService().getMovieList();
        
        response.setContentType("application/json;charset=UTF-8");
        new Gson().toJson(movies, response.getWriter());
    }

}
