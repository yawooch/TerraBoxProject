package com.tera.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tera.member.model.service.MemberService;
import com.tera.member.model.vo.Member;

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
   
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	   System.out.println(request.getParameter("id"));
//	   System.out.println(request.getParameter("pwd"));
//	   System.out.println(request.getParameter("email"));
	   
	   Member member = new Member();

       member.setId(request.getParameter("id"));
       member.setPassword(request.getParameter("pwd"));
       member.setEmail(request.getParameter("email"));


       System.out.println(member);

       int result = new MemberService().save(member);

//       if (result > 0) {
//           // 회원 가입 완료
//           request.setAttribute("msg", "회원 가입 성공");
//           request.setAttribute("location", "/views/common/signup_4.jsp");
//       } else {
//           // 회원 가입 실패
//           request.setAttribute("msg", "회원 가입 실패");
//           request.setAttribute("location", "/");
//       }
//
//       request.getRequestDispatcher("/views/common/msg.jsp")
//              .forward(request, response);
//   		}
   }
}