package com.tera.question.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "questionFaq", urlPatterns = { "/question/faq" })
public class QuestionFag extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public QuestionFag() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/views/question/faq.jsp").forward(request, response);
	}

}
