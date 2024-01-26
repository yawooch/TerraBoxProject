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
 * 대관 하기 입력을 처리하는 Servlet
 */
@WebServlet(name = "questionWritrenteview", urlPatterns = { "/question/writerentview" })
public class QuestionWriterent extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public QuestionWriterent() {
	}

	/**
	 * 주소 요청을 받아 해당 JSP 파일에 response해준다
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		request.getRequestDispatcher("/views/question/questionWriterent.jsp").forward(request, response);
	}

	/**
	 * 입력한 폼을 전달받아 DB에 문의 정보를 입력한다.
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int fo =0;
		Question question = new Question();

//		question.setPassNo Integer.parseInt(((request.getParameter("nonMbInqPwd")));

		question.setCinemaId(request.getParameter("theater"));
		question.setRentDate(request.getParameter("date"));
		question.setMovieName(request.getParameter("lentAdmisMovieNm"));
		question.setNum(Integer.parseInt((request.getParameter("admisPcntCnt"))));
		question.setName(request.getParameter("lentAinqurNm"));
		question.setPhone(request.getParameter("lentHpNum1") + request.getParameter("lentHpNum2") + request.getParameter("lentHpNum3"));
		question.setEmail(request.getParameter("lentRpstEmail"));
		question.setTitle(request.getParameter("lentCustInqTitle"));
		question.setContent(request.getParameter("custInqCn"));
		question.setPassNo(Integer.parseInt((request.getParameter("nonMbInqPwd"))));
		
		System.out.println(question);
		
		fo = new QuestionBoardService().rentsave(question);
	

		request.getRequestDispatcher("/views/question/myquestionlist.jsp").forward(request, response);
	}
}
