package com.tera.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tera.member.model.vo.Member;


@WebServlet(name = "memberInput", urlPatterns = { "/member/input" })
public class MemberInputServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public MemberInputServlet() {
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
    	Member member = new Member();
    	
    	String birth = request.getParameter("memSsn"); //변수에 담아줌 2000627142514//
    	
    	member.setMemberName(request.getParameter("memberName"));
    	member.setMemSsn(request.getParameter("memSsn"));
    	member.setMemPhone(request.getParameter("memPhone"));
    	
    	request.getRequestDispatcher("/views/common/signup_3.jsp").forward(request, response);
		
	}

}
