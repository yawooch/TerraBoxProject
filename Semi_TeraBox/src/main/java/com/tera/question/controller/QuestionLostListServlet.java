package com.tera.question.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 문의하기 이동하는 처리하는  Servlet
 */
@WebServlet(name = "questionWrite", urlPatterns = { "/question/write" })
public class QuestionLostListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public QuestionLostListServlet() {}

	/**
	 * 주소 요청을 받아 해당 JSP 파일에 response해준다
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/views/mypage/myquestion.jsp").forward(request, response);
	}

	

}
