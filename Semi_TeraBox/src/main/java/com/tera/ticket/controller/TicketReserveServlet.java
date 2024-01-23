package com.tera.ticket.controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tera.common.jdbc.test.vo.Ticket;
import com.tera.ticket.model.service.TicketService;

/**
 * 예매 화면으로 가는 페이지를 호출하는 Servlet
 */
@WebServlet(name = "ticketReserve", urlPatterns = { "/ticket" })
public class TicketReserveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TicketReserveServlet() {}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String seatNo = request.getParameter("seatNo");
		
		Ticket ticket = new Ticket();
		 
		int result = new TicketService().save(seatNo); 
		
		
	
		//일단은 두번째 화면 
		request.getRequestDispatcher("/views/ticket/bookingSeat2.jsp").forward(request, response);
		
	}

	
}
