package com.tera.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 나의 문의 내역 화면으로 가는 페이지를 호출하는 Servlet
 */
@WebServlet(name = "memberQuestion", urlPatterns = { "/mypage/question" })
public class MemberQuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MemberQuestionServlet() {}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/views/mypage/myquestion.jsp").forward(request, response);
	}
}
