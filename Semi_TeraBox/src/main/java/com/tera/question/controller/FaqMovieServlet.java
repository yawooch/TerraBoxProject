package com.tera.question.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tera.common.util.PageInfo;
import com.tera.question.model.service.FaqService;
import com.tera.question.model.vo.Faq;

@WebServlet(name = "faqMovie", urlPatterns = { "/question/faqmovie" })
public class FaqMovieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public FaqMovieServlet() {
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	List<Faq> list = null;
    	
    	list = new FaqService().findCategory("영화예매");
    	
    	
    	request.setAttribute("list", list);
    	
    	System.out.println(list);
    	
    	
      
    	request.getRequestDispatcher("/views/question/faqmovie.jsp").forward(request, response);
    }
    
    

}
