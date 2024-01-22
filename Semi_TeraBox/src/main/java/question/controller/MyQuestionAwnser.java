package question.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "myQuestionAwnser", urlPatterns = { "/myQuestion/Awnser" })
public class MyQuestionAwnser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MyQuestionAwnser() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("/views/question/myquestionawnser.jsp").forward(request, response);
		
		
	}

	
}
