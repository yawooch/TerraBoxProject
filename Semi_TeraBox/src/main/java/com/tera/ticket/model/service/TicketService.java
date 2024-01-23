package com.tera.ticket.model.service;

import java.sql.Connection;
import static com.tera.common.jdbc.JDBCTemplate.*;

import com.tera.common.jdbc.test.vo.Ticket;
import com.tera.ticket.model.dao.TicketDao;

public class TicketService {
	public int save(String seatNo){
		int result = 0;
		
		Connection connection = getConnection();
		
		//Ticket. = new TicketDao().insertTicket(connection, seatNo);
		

		if (result > 0) {
			commit(connection);
		} else {
			rollback(connection);
		}	
		
		
		return result;
	}
}
