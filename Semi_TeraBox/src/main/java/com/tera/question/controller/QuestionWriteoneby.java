package com.tera.question.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tera.question.model.service.QuestionBoardService;
import com.tera.question.model.vo.Question;

/**
 * 1:1 문의하기 입력을 처리하는 Servlet
 */
@WebServlet(name = "questionWriteview", urlPatterns = { "/question/writeview" })
public class QuestionWriteoneby extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public QuestionWriteoneby() {
	}

	/**
	 * 주소 요청을 받아 해당 JSP 파일에 response해준다
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		request.getRequestDispatcher("/views/question/questionWrite.jsp").forward(request, response);
	}

	/**
	 * 입력한 폼을 전달받아 DB에 문의 정보를 입력한다.
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int no =0;
		Question question = new Question();

//		question.setPassNo Integer.parseInt(((request.getParameter("nonMbInqPwd")));

		question.setTitle(request.getParameter("custInqTitle"));
		question.setContent(request.getParameter("custInqCn"));
		question.setPassNo(Integer.parseInt((request.getParameter("nonMbInqPwd"))));
		question.setPhone(request.getParameter("hpNum1") + request.getParameter("hpNum2") + request.getParameter("hpNum3"));
		question.setName(request.getParameter("inqurNm"));
		question.setEmail(request.getParameter("rpstEmail"));
		question.setType(request.getParameter("inqMclCd"));

		System.out.println(question);
		
		no = new QuestionBoardService().save(question);
	

		request.getRequestDispatcher("/views/question/myquestionlist.jsp").forward(request, response);
	}
}