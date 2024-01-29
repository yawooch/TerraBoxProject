package com.tera.ticket.controller;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 예매 좌석선택 화면으로 이동하는 Servlet
 */
@WebServlet(name = "ticketSeat", urlPatterns = { "/ticket/seat" })
public class TicketSeatServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TicketSeatServlet() {}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println(Arrays.toString(request.getParameterValues("selectMovie")));
		System.out.println(Arrays.toString(request.getParameterValues("selectCinema")));
		
		request.getRequestDispatcher("/views/ticket/bookingSeat2.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
}