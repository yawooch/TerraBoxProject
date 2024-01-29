package com.tera.ticket.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.tera.ticket.model.service.TicketService;
import com.tera.ticket.model.vo.TimeTable;

/**
 * 영화 상영시간표를 가져오는 Ajax Servlet
 */
@WebServlet(name = "ticketTimeTableAjax", urlPatterns = { "/ticket/timetable.ajax" })
public class TicketTimeTableAjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TicketTimeTableAjaxServlet() {}

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        List<TimeTable> timeTables = new TicketService().getTimeTableList();
        
        System.out.println(timeTables);
        
        response.setContentType("application/json;charset=UTF-8");
        new Gson().toJson(timeTables, response.getWriter());
    }

}
