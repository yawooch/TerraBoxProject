package com.tera.question.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tera.common.util.PageInfo;
import com.tera.question.model.service.QuestionBoardService;
import com.tera.question.model.vo.Question;


//나의문의내력리스트 이동하는 서블릿(실행안됨)

@WebServlet(name = "questionMyquestionList", urlPatterns = { "/question/myquestionList" })
public class QuestionMyquestionList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public QuestionMyquestionList() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PageInfo pageInfo = null;
		int page = 0;
		int listCount = 0;
		List<Question> list = null;

		try {
			page = Integer.parseInt(request.getParameter("page"));

		} catch (NumberFormatException e) {
			page = 1;
		}

		listCount = new QuestionBoardService().getQuestionCount();
		pageInfo = new PageInfo(page, 1 , listCount, 10);
		list = new QuestionBoardService().getQuestionList(pageInfo);

		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("list", list);

		System.out.println(list);
		
		
		request.getRequestDispatcher("/views/question/myquestionlist.jsp").forward(request, response);
	}


}
