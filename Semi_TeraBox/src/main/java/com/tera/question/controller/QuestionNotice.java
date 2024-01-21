package com.tera.question.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "questionNotice", urlPatterns = { "/question/notice" })
public class QuestionNotice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public QuestionNotice() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/views/question/announcement.jsp").forward(request, response);
		
		
	
	}
	

}
