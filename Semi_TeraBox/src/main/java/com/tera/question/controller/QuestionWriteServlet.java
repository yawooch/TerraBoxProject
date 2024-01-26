package com.tera.question.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 분실물 목록을 화면을 처리하는  Servlet
 */
@WebServlet(name = "questionLost", urlPatterns = { "/question/lost" })
public class QuestionWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public QuestionWriteServlet() {}

	
	
	
	
	
	/**
	 * 주소 요청을 받아 해당 JSP 파일에 response해준다
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/views/question/lostItem.jsp").forward(request, response);
	}
}
