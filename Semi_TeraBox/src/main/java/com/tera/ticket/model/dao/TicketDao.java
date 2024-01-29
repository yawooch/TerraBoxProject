package com.tera.ticket.model.dao;

import static com.tera.common.jdbc.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tera.ticket.model.vo.TimeTable;

public class TicketDao {

	public int insertTicket(Connection connection, String seatNo) {
		int result = 0;
		PreparedStatement pstmt = null;
//		String query = "INSERT INTO TICKET VALUES() "
		
		close(pstmt);
		
		return result;
	}
	//영화, 극장, 상영관, 상영시간표를 조인하여 결과물을 가져온다.
	public List<TimeTable> getTimeTableList(Connection connection) {
		
		List<TimeTable> timeTables = new ArrayList<TimeTable>();
		PreparedStatement pstmt    = null;
		ResultSet rs               = null;
		String query               = "SELECT T.SCRN_NO"
			                       + "     , TO_CHAR(T.SCRN_STR_DTTM, 'HH24:MI') AS SCRN_STR_DTTM"
			                       + "     , TO_CHAR(T.SCRN_END_DTTM, 'HH24:MI') AS SCRN_END_DTTM"
			                       + "     , T.MOVIE_NO"
			                       + "     , M.MV_KOR_NAME"
			                       + "     , T.THEATER_NO"
			                       + "     , H.THEATER_NAME"
			                       + "     , H.CINEMA_ID"
			                       + "     , C.CINEMA_NAME"
			                       + "     , T.DISCOUNT_DV"
			                       + "  FROM TIME_TABLE   T"
			                       + "  LEFT OUTER JOIN"
			                       + "       THEATER      H  "
			                       + "    ON T.THEATER_NO = H.THEATER_NO"
			                       + "  LEFT OUTER JOIN"
			                       + "       CINEMA       C"
			                       + "    ON H.CINEMA_ID  = C.CINEMA_ID"
			                       + "  LEFT OUTER JOIN"
			                       + "       MOVIE        M"
			                       + "    ON T.MOVIE_NO   = M.MOVIE_NO"
			                       + " WHERE M.MOVIE_NO = '2'"
			                       + " ORDER BY T.SCRN_STR_DTTM";
		
		try {
			pstmt = connection.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				TimeTable timeTable = new TimeTable();

				timeTable.setScrnNo(rs.getString("SCRN_NO"));
				timeTable.setScrnStrDttm(rs.getString("SCRN_STR_DTTM"));
				timeTable.setScrnEndDttm(rs.getString("SCRN_END_DTTM"));
				timeTable.setMovieNo(rs.getString("MOVIE_NO"));
				timeTable.setMvKorName(rs.getString("MV_KOR_NAME"));
				timeTable.setTheaterNo(rs.getString("THEATER_NO"));
				timeTable.setTheaterName(rs.getString("THEATER_NAME"));
				timeTable.setCinemaId(rs.getString("CINEMA_ID"));
				timeTable.setCinemaName(rs.getString("CINEMA_NAME"));
				timeTable.setDiscountDv(rs.getString("DISCOUNT_DV"));
				

				System.out.println("Dao : " + timeTable);
				
				timeTables.add(timeTable);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			close(rs);
			close(pstmt);
		}
		
		return timeTables;
	}
	
}
