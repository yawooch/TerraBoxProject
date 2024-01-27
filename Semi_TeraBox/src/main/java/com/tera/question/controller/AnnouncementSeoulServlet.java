package com.tera.question.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tera.question.model.service.AnnouncementService;
import com.tera.question.model.vo.Notice;

@WebServlet(name = "announcementSeoul", urlPatterns = { "/question/announcementSeoul" })
public class AnnouncementSeoulServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AnnouncementSeoulServlet() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Notice> list = null;
		
		list = new AnnouncementService().findSeoul();
		
	
		
		request.setAttribute("list", list);
		
	request.getRequestDispatcher("/views/question/announcementSeuel.jsp").forward(request, response);
	}

}
