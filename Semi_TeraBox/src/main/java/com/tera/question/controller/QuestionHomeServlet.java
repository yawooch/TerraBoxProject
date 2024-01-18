package com.tera.question.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 고객센터 홈으로 가는 페이지를 호출하는 Servlet
 */
@WebServlet(name = "questionHome", urlPatterns = { "/question" })
public class QuestionHomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public QuestionHomeServlet() {}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/views/question/questionHome.jsp").forward(request, response);
	}
}
