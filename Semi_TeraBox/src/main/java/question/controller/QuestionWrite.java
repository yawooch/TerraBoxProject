package question.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import question.model.service.QuestionBoardService;
import question.model.vo.Question;

/**
 * 문의하기 입력을 처리하는 Servlet
 */
@WebServlet(name = "questionWrite", urlPatterns = { "/question/write" })
public class QuestionWrite extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public QuestionWrite() {
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
		
		 
		 Question question = new Question();
		 
//		 question.setQuestNo(request.getParameter("inqMclCd"));
		 
		 
		 
		 System.out.println(request.getParameter("custInqTitle"));
		 System.out.println(request.getParameter("custInqCn"));
		 System.out.println(request.getParameter("nonMbInqPw"));
		 System.out.println(request.getParameter("hpNum1"));
		 System.out.println(request.getParameter("inqurNm"));
		 System.out.println(request.getParameter("rpstEmail"));
		 System.out.println(request.getParameter("inqMclCd"));
		 
		 
		 question.setQuestTitle(request.getParameter("custInqTitle"));
		 question.setQuestContent(request.getParameter("custInqCn"));
		 question.setQuestPassNo(request.getParameter("nonMbInqPw"));
		 question.setQuestPhone(request.getParameter("hpNum1" + "hpNum2"+"hpNum3"));
		 question.setQuestName(request.getParameter("inqurNm"));
		 question.setQuestEmail(request.getParameter("rpstEmail"));
		 question.setQuestType(request.getParameter("inqMclCd"));

		 
		 System.out.println(question);
		 

         System.out.println(new QuestionBoardService().save(question));
		

		request.getRequestDispatcher("/views/mypage/myquestion.jsp").forward(request, response);
	}
}
