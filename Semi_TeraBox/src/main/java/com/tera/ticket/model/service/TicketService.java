package com.tera.ticket.model.service;

import static com.tera.common.jdbc.JDBCTemplate.close;
import static com.tera.common.jdbc.JDBCTemplate.commit;
import static com.tera.common.jdbc.JDBCTemplate.getConnection;
import static com.tera.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import com.tera.common.jdbc.JDBCTemplate;
import com.tera.ticket.model.dao.TicketDao;
import com.tera.ticket.model.vo.TimeTable;

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

	public List<TimeTable> getTimeTableList() {
		List<TimeTable> timetables = null;
		
		Connection connection = JDBCTemplate.getConnection();
		
		timetables = new TicketDao().getTimeTableList(connection);
		
		System.out.println("Sevice : " + timetables);
		
		close(connection);
		
		return timetables;
	}

}
