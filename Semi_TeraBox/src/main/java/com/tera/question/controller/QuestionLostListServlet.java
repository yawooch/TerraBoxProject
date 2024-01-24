package com.tera.question.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 나의 문의하기 리스트을 보여주는 Servlet
 */
@WebServlet(name = "myquestionlist", urlPatterns = { "/question/myquestionlist" })
public class QuestionLostListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public QuestionLostListServlet() {}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/views/question/myquestionlist.jsp").forward(request, response);
	}

	

}
