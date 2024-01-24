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
    	PageInfo pageInfo = null;
		int page = 0;
		int listCount = 0;
		List<Faq> list = null;
		
		
		try {
			
			page = Integer.parseInt(request.getParameter("page")); 
			
		}catch (NumberFormatException e) {
			page = 1;
		}
		
		listCount = new FaqService().getFaqCount(); 
		
		
		pageInfo = new PageInfo(page,  10, listCount, 10);

		
		list = new FaqService().findMovieAll(pageInfo);
		
		request.setAttribute("pageInfo", pageInfo);
		
		request.setAttribute("list", list);
    	
    	
      
    	request.getRequestDispatcher("/views/question/faqmovie.jsp").forward(request, response);
    }

}
