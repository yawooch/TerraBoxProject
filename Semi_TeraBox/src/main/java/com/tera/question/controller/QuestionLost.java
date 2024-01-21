package com.tera.question.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * 분실물 문의 페이지로  가는 페이지를 호출하는 Servlet
 */

@WebServlet(name = "questionLost", urlPatterns = { "/question/lost" })
public class QuestionLost extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public QuestionLost() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("/views/question/lostItem.jsp").forward(request, response);
	}

}
