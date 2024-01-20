package com.tera.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;	

/**
 * 회원가입 화면으로 가는 페이지를 호출하는 Servlet
 */
@WebServlet(name = "memberEnroll", urlPatterns = { "/member/enroll" })
public class MemberEnrollServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MemberEnrollServlet() {}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/views/common/signup_3.jsp").forward(request, response);
	}
}
